package com.msh.flutter_google_places_sdk

import android.content.Context
import android.graphics.Bitmap
import androidx.annotation.NonNull
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.maps.model.LatLngBounds
import com.google.android.libraries.places.api.Places
import com.google.android.libraries.places.api.model.*
import com.google.android.libraries.places.api.net.*
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.io.ByteArrayOutputStream
import java.lang.reflect.Field
import java.util.*


/** FlutterGooglePlacesSdkPlugin */
class FlutterGooglePlacesSdkPlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var client: PlacesClient
    private lateinit var channel: MethodChannel
    private lateinit var applicationContext: Context

    private var lastSessionToken: AutocompleteSessionToken? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        onAttachedToEngine(binding.applicationContext, binding.binaryMessenger)
    }

    private fun onAttachedToEngine(applicationContext: Context, binaryMessenger: BinaryMessenger) {
        this.applicationContext = applicationContext

        channel = MethodChannel(binaryMessenger, CHANNEL_NAME)
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            METHOD_INITIALIZE -> {
                val apiKey = call.argument<String>("apiKey")
                val localeMap = call.argument<Map<String, Any>>("locale")
                val locale = readLocale(localeMap)
                initialize(apiKey, locale)
                result.success(null)
            }
            METHOD_UPDATE_SETTINGS -> {
                val apiKey = call.argument<String>("apiKey")
                val localeMap = call.argument<Map<String, Any>>("locale")
                val locale = readLocale(localeMap)
                updateSettings(apiKey, locale)
                result.success(null)
            }
            METHOD_DEINITIALIZE -> {
                Places.deinitialize()
                result.success(null)
            }
            METHOD_IS_INITIALIZE -> {
                result.success(Places.isInitialized())
            }
            METHOD_FIND_AUTOCOMPLETE_PREDICTIONS -> {
                val query = call.argument<String>("query")
                val countries = call.argument<List<String>>("countries") ?: emptyList()
                val placeTypesFilter = call.argument<List<String>>("typesFilter") ?: emptyList()
                val newSessionToken = call.argument<Boolean>("newSessionToken")

                val origin = latLngFromMap(call.argument<Map<String, Any?>>("origin"))
                val locationBias =
                    rectangularBoundsFromMap(call.argument<Map<String, Any?>>("locationBias"))
                val locationRestriction =
                    rectangularBoundsFromMap(call.argument<Map<String, Any?>>("locationRestriction"))
                val sessionToken = getSessionToken(newSessionToken == true)
                val request = FindAutocompletePredictionsRequest.builder()
                    .setQuery(query)
                    .setLocationBias(locationBias)
                    .setLocationRestriction(locationRestriction)
                    .setCountries(countries)
                    .setTypesFilter(placeTypesFilter)
                    .setSessionToken(sessionToken)
                    .setOrigin(origin)
                    .build()
                client.findAutocompletePredictions(request).addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        lastSessionToken = request.sessionToken
                        val resultList = responseToList(task.result)
                        print("findAutoCompletePredictions Result: $resultList")
                        result.success(resultList)
                    } else {
                        val exception = task.exception
                        print("findAutoCompletePredictions Exception: $exception")
                        result.error(
                            "API_ERROR_AUTOCOMPLETE", exception?.message ?: "Unknown exception",
                            mapOf("type" to (exception?.javaClass?.toString() ?: "null"))
                        )
                    }
                }
            }
            METHOD_FETCH_PLACE -> {
                val placeId = call.argument<String>("placeId")!!
                val fields = call.argument<List<String>>("fields")?.map { placeFieldFromStr(it) }
                    ?: emptyList()
                val newSessionToken = call.argument<Boolean>("newSessionToken")
                val request = FetchPlaceRequest.builder(placeId, fields)
                    .setSessionToken(getSessionToken(newSessionToken == true))
                    .build()
                client.fetchPlace(request).addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        val place = placeToMap(task.result?.place)
                        print("FetchPlace Result: $place")
                        result.success(place)
                    } else {
                        val exception = task.exception
                        print("FetchPlace Exception: $exception")
                        result.error(
                            "API_ERROR_PLACE", exception?.message ?: "Unknown exception",
                            mapOf("type" to (exception?.javaClass?.toString() ?: "null"))
                        )
                    }
                }
            }
            METHOD_FETCH_PLACE_PHOTO -> {
                val photoMetadata =
                    photoMetadataFromMap(call.argument<Map<String, Any?>>("photoMetadata")!!)
                val maxWidth = call.argument<Int?>("maxWidth")
                val maxHeight = call.argument<Int?>("maxHeight")

                val request = FetchPhotoRequest.builder(photoMetadata)
                    .setMaxWidth(maxWidth)
                    .setMaxHeight(maxHeight)
                    .build()
                client.fetchPhoto(request).addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        val photo = task.result?.bitmap
                        print("fetchPlacePhoto Result: $photo")
                        result.success(bitmapToBytes(photo))
                    } else {
                        val exception = task.exception
                        print("fetchPlacePhoto Exception: $exception")
                        result.error(
                            "API_ERROR_PHOTO", exception?.message ?: "Unknown exception",
                            mapOf("type" to (exception?.javaClass?.toString() ?: "null"))
                        )
                    }
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    private fun bitmapToBytes(photo: Bitmap?): ByteArray {
        if (photo == null) {
            return byteArrayOf()
        }

        val outputStream = ByteArrayOutputStream()
        photo.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
        return outputStream.toByteArray()
    }

    private fun rectangularBoundsFromMap(argument: Map<String, Any?>?): RectangularBounds? {
        if (argument == null) {
            return null
        }

        val latLngBounds = latLngBoundsFromMap(argument) ?: return null
        return RectangularBounds.newInstance(latLngBounds)
    }

    @Suppress("UNCHECKED_CAST")
    private fun latLngBoundsFromMap(argument: Map<String, Any?>?): LatLngBounds? {
        if (argument == null) {
            return null
        }

        val southWest = latLngFromMap(argument["southwest"] as? Map<String, Any?>) ?: return null
        val northEast = latLngFromMap(argument["northeast"] as? Map<String, Any?>) ?: return null

        return LatLngBounds(southWest, northEast)
    }

    private fun getSessionToken(force: Boolean): AutocompleteSessionToken {
        val localToken = lastSessionToken
        if (force || localToken == null) {
            return AutocompleteSessionToken.newInstance()
        }
        return localToken
    }

    private fun latLngFromMap(argument: Map<String, Any?>?): LatLng? {
        if (argument == null) {
            return null
        }

        val lat = argument["lat"] as Double?
        val lng = argument["lng"] as Double?
        if (lat == null || lng == null) {
            return null
        }

        return LatLng(lat, lng)
    }

    private fun placeFieldFromStr(it: String): Place.Field {
        return when (it) {
            "ADDRESS" -> Place.Field.ADDRESS
            "ADDRESS_COMPONENTS" -> Place.Field.ADDRESS_COMPONENTS
            "BUSINESS_STATUS" -> Place.Field.BUSINESS_STATUS
            "ID" -> Place.Field.ID
            "LAT_LNG" -> Place.Field.LAT_LNG
            "NAME" -> Place.Field.NAME
            "OPENING_HOURS" -> Place.Field.OPENING_HOURS
            "PHONE_NUMBER" -> Place.Field.PHONE_NUMBER
            "PHOTO_METADATAS" -> Place.Field.PHOTO_METADATAS
            "PLUS_CODE" -> Place.Field.PLUS_CODE
            "PRICE_LEVEL" -> Place.Field.PRICE_LEVEL
            "RATING" -> Place.Field.RATING
            "TYPES" -> Place.Field.TYPES
            "USER_RATINGS_TOTAL" -> Place.Field.USER_RATINGS_TOTAL
            "UTC_OFFSET" -> Place.Field.UTC_OFFSET
            "VIEWPORT" -> Place.Field.VIEWPORT
            "WEBSITE_URI" -> Place.Field.WEBSITE_URI
            else -> {
                throw IllegalArgumentException("Invalid placeField: $it")
            }
        }
    }

    private fun responseToList(result: FindAutocompletePredictionsResponse?): List<Map<String, Any?>>? {
        if (result == null) {
            return null
        }

        return result.autocompletePredictions.map { item -> predictionToMap(item) }
    }

    private fun placeToMap(place: Place?): Map<String, Any?> {
        if (place == null) {
            return emptyMap()
        }

        return mapOf(
            "id" to place.id,
            "address" to place.address,
            "addressComponents" to place.addressComponents?.asList()
                ?.map { addressComponentToMap(it) },
            "businessStatus" to place.businessStatus?.name,
            "attributions" to place.attributions,
            "latLng" to latLngToMap(place.latLng),
            "name" to place.name,
            "openingHours" to openingHoursToMap(place.openingHours),
            "phoneNumber" to place.phoneNumber,
            "photoMetadatas" to place.photoMetadatas?.map { photoMetadataToMap(it) },
            "plusCode" to plusCodeToMap(place.plusCode),
            "priceLevel" to place.priceLevel,
            "rating" to place.rating,
            "types" to place.types?.map { it.name },
            "userRatingsTotal" to place.userRatingsTotal,
            "utcOffsetMinutes" to place.utcOffsetMinutes,
            "viewport" to latLngBoundsToMap(place.viewport),
            "websiteUri" to place.websiteUri?.toString()
        )
    }

    private fun openingHoursToMap(openingHours: OpeningHours?): Map<String, Any?>? {
        if (openingHours == null) {
            return null
        }

        return mapOf(
            "periods" to openingHours.periods.map { periodToMap(it) },
            "weekdayText" to openingHours.weekdayText
        )
    }

    private fun periodToMap(period: Period): Map<String, Any?> {
        return mapOf(
            "open" to timeOfWeekToMap(period.open),
            "close" to timeOfWeekToMap(period.close)
        )
    }

    private fun timeOfWeekToMap(timeOfWeek: TimeOfWeek?): Map<String, Any?>? {
        if (timeOfWeek == null) {
            return null
        }

        return mapOf(
            "day" to timeOfWeek.day.name,
            "time" to placeLocalTimeToMap(timeOfWeek.time)
        )
    }

    private fun placeLocalTimeToMap(time: LocalTime): Map<String, Any?> {
        return mapOf(
            "hours" to time.hours,
            "minutes" to time.minutes
        )
    }

    private fun photoMetadataToMap(photoMetadata: PhotoMetadata): Map<String, Any?> {
        val photoReference = getPhotoReference(photoMetadata)
        return mapOf(
            "width" to photoMetadata.width,
            "height" to photoMetadata.height,
            "attributions" to photoMetadata.attributions,
            "photoReference" to photoReference
        )
    }

    private fun getPhotoReference(photoMetadata: PhotoMetadata): String? {
        // This is a 'hack' since PhotoMetadata doesn't expose 'photoReference' field.
        // We need that field to construct photoMetadata in the future, for use with
        // fetchPlacePhoto
        return getFieldsInHierarchy(photoMetadata.javaClass)
            .filter { "zzd" == it.name }
            .map { it.isAccessible = true; it.get(photoMetadata) as String? }
            .firstOrNull()
    }

    private fun getFieldsInHierarchy(javaClass: Class<in PhotoMetadata>?) = sequence<Field> {
        var javaCls = javaClass
        while (javaCls != null) {
            for (field in javaCls.declaredFields) {
                yield(field)
            }
            javaCls = javaCls.superclass
        }
    }

    private fun photoMetadataFromMap(data: Map<String, Any?>): PhotoMetadata {
        val photoReference = data["photoReference"] as String
        val width = data["width"] as Int
        val height = data["height"] as Int

        return PhotoMetadata.builder(photoReference)
            .setWidth(width)
            .setHeight(height)
            .build()
    }

    private fun plusCodeToMap(plusCode: PlusCode?): Map<String, Any?>? {
        if (plusCode == null) {
            return null
        }

        return mapOf(
            "compoundCode" to plusCode.compoundCode,
            "globalCode" to plusCode.globalCode
        )
    }

    private fun latLngBoundsToMap(viewport: LatLngBounds?): Map<String, Any?>? {
        if (viewport == null) {
            return null
        }

        return mapOf(
            "southwest" to latLngToMap(viewport.southwest),
            "northeast" to latLngToMap(viewport.northeast)
        )
    }

    private fun addressComponentToMap(addressComponent: AddressComponent): Map<String, Any?> {
        return mapOf(
            "name" to addressComponent.name,
            "shortName" to addressComponent.shortName,
            "types" to addressComponent.types
        )
    }

    private fun latLngToMap(latLng: LatLng?): Any? {
        if (latLng == null) {
            return null
        }

        return mapOf(
            "lat" to latLng.latitude,
            "lng" to latLng.longitude
        )
    }

    private fun predictionToMap(result: AutocompletePrediction): Map<String, Any?> {
        return mapOf(
            "placeId" to result.placeId,
            "distanceMeters" to result.distanceMeters,
            "primaryText" to result.getPrimaryText(null).toString(),
            "secondaryText" to result.getSecondaryText(null).toString(),
            "fullText" to result.getFullText(null).toString()
        )
    }

    private fun readLocale(localeMap: Map<String, Any>?): Locale? {
        if (localeMap == null) {
            return null
        }

        val language = localeMap["language"] as? String ?: return null
        var country = localeMap["country"] as? String
        if (country == null) {
            country = Locale.getDefault().country
        }
        return Locale(language, country)
    }

    private fun initialize(apiKey: String?, locale: Locale?) {
        updateSettings(apiKey, locale)
        client = Places.createClient(applicationContext)
    }

    private fun updateSettings(apiKey: String?, locale: Locale?) {
        Places.initialize(applicationContext, apiKey ?: "", locale)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    companion object {
        private const val METHOD_INITIALIZE = "initialize"
        private const val METHOD_UPDATE_SETTINGS = "updateSettings"
        private const val METHOD_DEINITIALIZE = "deinitialize"
        private const val METHOD_IS_INITIALIZE = "isInitialized"
        private const val METHOD_FIND_AUTOCOMPLETE_PREDICTIONS = "findAutocompletePredictions"
        private const val METHOD_FETCH_PLACE = "fetchPlace"
        private const val METHOD_FETCH_PLACE_PHOTO = "fetchPlacePhoto"

        const val CHANNEL_NAME = "plugins.msh.com/flutter_google_places_sdk"
    }
}
