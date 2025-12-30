package com.msh.flutter_google_places_sdk

import android.content.Context
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.maps.model.LatLngBounds
import com.google.android.libraries.places.api.Places
import com.google.android.libraries.places.api.model.AddressComponent
import com.google.android.libraries.places.api.model.AuthorAttribution
import com.google.android.libraries.places.api.model.AutocompletePrediction
import com.google.android.libraries.places.api.model.AutocompleteSessionToken
import com.google.android.libraries.places.api.model.CircularBounds
import com.google.android.libraries.places.api.model.LocalTime
import com.google.android.libraries.places.api.model.OpeningHours
import com.google.android.libraries.places.api.model.Period
import com.google.android.libraries.places.api.model.PhotoMetadata
import com.google.android.libraries.places.api.model.Place
import com.google.android.libraries.places.api.model.PlusCode
import com.google.android.libraries.places.api.model.RectangularBounds
import com.google.android.libraries.places.api.model.Review
import com.google.android.libraries.places.api.model.TimeOfWeek
import com.google.android.libraries.places.api.net.FetchPlaceRequest
import com.google.android.libraries.places.api.net.FetchResolvedPhotoUriRequest
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsRequest
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsResponse
import com.google.android.libraries.places.api.net.PlacesClient
import com.google.android.libraries.places.api.net.SearchByTextRequest
import com.google.android.libraries.places.api.net.SearchNearbyRequest
import com.google.common.base.CaseFormat
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import java.util.Locale

/** FlutterGooglePlacesSdkPlugin */
class FlutterGooglePlacesSdkPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var client: PlacesClient
    private lateinit var channel: MethodChannel
    private lateinit var applicationContext: Context

    private var photosCache = mutableMapOf<String, PhotoMetadata>()
    private var runningUid = 1

    private var lastSessionToken: AutocompleteSessionToken? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        onAttachedToEngine(binding.applicationContext, binding.binaryMessenger)
    }

    private fun onAttachedToEngine(applicationContext: Context, binaryMessenger: BinaryMessenger) {
        this.applicationContext = applicationContext

        channel = MethodChannel(binaryMessenger, CHANNEL_NAME)
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
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
                val regionCode = call.argument<String>("regionCode")
                val newSessionToken = call.argument<Boolean>("newSessionToken")
                val request = FetchPlaceRequest.builder(placeId, fields)
                    .setSessionToken(getSessionToken(newSessionToken == true))
                    .setRegionCode(regionCode)
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
                val photoReference = call.argument<String>("photoReference")
                val photoMetadata = photosCache[photoReference]!!
                val maxWidth = call.argument<Int>("maxWidth")
                val maxHeight = call.argument<Int>("maxHeight")

                val request = FetchResolvedPhotoUriRequest.builder(photoMetadata)
                    .setMaxWidth(maxWidth)
                    .setMaxHeight(maxHeight)
                    .build()
                client.fetchResolvedPhotoUri(request).addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        val photoUri = task.result?.uri?.toString()
                        print("fetchPlacePhoto Result: $photoUri")
                        result.success(photoUri)
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

            METHOD_SEARCH_BY_TEXT -> {
                val textQuery = call.argument<String>("textQuery")!!
                val includedType = call.argument<String>("includedType")
                val maxResultCount = call.argument<Int>("maxResultCount")
                val minRating = call.argument<Double>("minRating")
                val openNow = call.argument<Boolean>("openNow") ?: false
                val priceLevels = call.argument<List<Int>>("priceLevels")
                    ?: emptyList()
                val regionCode = call.argument<String>("regionCode")!!
                val rankPreference = call.argument<String>("rankPreference")
                    ?.let(SearchByTextRequest.RankPreference::valueOf)
                    ?: SearchByTextRequest.RankPreference.RELEVANCE
                val strictTypeFiltering = call.argument<Boolean>("strictTypeFiltering") ?: false
                val locationBias =
                    rectangularBoundsFromMap(call.argument<Map<String, Any?>>("locationBias"))
                val locationRestriction =
                    rectangularBoundsFromMap(call.argument<Map<String, Any?>>("locationRestriction"))
                val fields = call.argument<List<String>>("fields")?.map { placeFieldFromStr(it) }
                    ?: emptyList()
                val request = SearchByTextRequest.builder(textQuery, fields)
                    .setIncludedType(includedType)
                    .setLocationBias(locationBias)
                    .setLocationRestriction(locationRestriction)
                    .setMaxResultCount(maxResultCount)
                    .setMinRating(minRating)
                    .setOpenNow(openNow)
                    .setPriceLevels(priceLevels)
                    .setRankPreference(rankPreference)
                    .setRegionCode(regionCode)
                    .setStrictTypeFiltering(strictTypeFiltering)
                    .build()
                client.searchByText(request).addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        val places = task.result?.places?.map { placeToMap(it) }
                        print("searchByText Result: $places")
                        result.success(places)
                    } else {
                        val exception = task.exception
                        print("searchByText Exception: $exception")
                        result.error(
                            "API_ERROR_SEARCH_BY_TEXT", exception?.message ?: "Unknown exception",
                            mapOf("type" to (exception?.javaClass?.toString() ?: "null"))
                        )
                    }
                }
            }

            METHOD_NEARBY_SEARCH -> {
                val fields = call.argument<List<String>>("fields")?.map { placeFieldFromStr(it) }
                    ?: emptyList()
                val locationRestriction =
                    circularBoundsFromMap(call.argument<Map<String, Any?>>("locationRestriction"))
                val excludedPrimaryTypes = call.argument<List<String>>("excludedPrimaryTypes")
                    ?: emptyList()
                val excludedTypes = call.argument<List<String>>("excludedTypes")
                    ?: emptyList()
                val includedPrimaryTypes = call.argument<List<String>>("includedPrimaryTypes")
                    ?: emptyList()
                val includedTypes = call.argument<List<String>>("includedTypes")
                    ?: emptyList()
                val rankPreference = SearchNearbyRequest.RankPreference.valueOf(
                    call.argument<String>("rankPreference")
                        ?: SearchNearbyRequest.RankPreference.POPULARITY.name
                )
                val regionCode = call.argument<String>("regionCode")
                val maxResultCount = call.argument<Int>("maxResultCount")
                val request = SearchNearbyRequest.builder(locationRestriction!!, fields)
                    .setExcludedPrimaryTypes(excludedPrimaryTypes)
                    .setExcludedTypes(excludedTypes)
                    .setIncludedPrimaryTypes(includedPrimaryTypes)
                    .setIncludedTypes(includedTypes)
                    .setRankPreference(rankPreference)
                    .setRegionCode(regionCode)
                    .setMaxResultCount(maxResultCount)
                    .build()
                client.searchNearby(request).addOnCompleteListener { task ->
                    if (task.isSuccessful) {
                        val places = task.result?.places?.map { placeToMap(it) }
                        print("searchNearby Result: $places")
                        result.success(places)
                    } else {
                        val exception = task.exception
                        print("searchNearby Exception: $exception")
                        result.error(
                            "API_ERROR_NEARBY_SEARCH", exception?.message ?: "Unknown exception",
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

    private fun rectangularBoundsFromMap(argument: Map<String, Any?>?): RectangularBounds? {
        if (argument == null) {
            return null
        }

        val latLngBounds = latLngBoundsFromMap(argument) ?: return null
        return RectangularBounds.newInstance(latLngBounds)
    }

    @Suppress("UNCHECKED_CAST")
    private fun circularBoundsFromMap(argument: Map<String, Any?>?): CircularBounds? {
        if (argument == null) {
            return null
        }

        val center = latLngFromMap(argument["center"] as? Map<String, Any?>) ?: return null
        val radius = argument["radius"] as? Double ?: 0.0

        return CircularBounds.newInstance(center, radius)
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
        try {
            return when (it) {
                "FormattedAddressAdr" -> Place.Field.ADR_FORMAT_ADDRESS
                "UtcOffset" -> Place.Field.UTC_OFFSET
                "Photos" -> Place.Field.PHOTO_METADATAS
                else -> Place.Field.valueOf(it.toScreamingSnakeCase())
            }
        } catch (_: IllegalArgumentException) {
            throw IllegalArgumentException("Invalid placeField: $it")
        }
    }

    private fun String.toScreamingSnakeCase(): String {
        return CaseFormat.UPPER_CAMEL.to(CaseFormat.UPPER_UNDERSCORE, this)
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
            "address" to place.formattedAddress,
            "addressComponents" to place.addressComponents?.asList()
                ?.map { addressComponentToMap(it) },
            "businessStatus" to place.businessStatus?.name,
            "attributions" to place.attributions,
            "latLng" to latLngToMap(place.location),
            "name" to place.displayName,
            "nameLanguageCode" to place.displayNameLanguageCode,
            "openingHours" to openingHoursToMap(place.openingHours),
            "phoneNumber" to place.nationalPhoneNumber,
            "photoMetadatas" to place.photoMetadatas?.map { photoMetadataToMap(it) },
            "plusCode" to plusCodeToMap(place.plusCode),
            "priceLevel" to place.priceLevel,
            "rating" to place.rating,
            "types" to place.placeTypes,
            "userRatingsTotal" to place.userRatingCount,
            "utcOffsetMinutes" to place.utcOffsetMinutes,
            "viewport" to latLngBoundsToMap(place.viewport),
            "websiteUri" to place.websiteUri?.toString(),
            "reviews" to place.reviews?.map { reviewToMap(it) }
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

    private fun reviewToMap(review: Review): Map<String, Any?> {
        return mapOf(
            "attribution" to review.attribution,
            "authorAttribution" to authorAttributionToMap(review.authorAttribution),
            "originalText" to review.originalText,
            "originalTextLanguageCode" to review.originalTextLanguageCode,
            "rating" to review.rating,
            "publishTime" to review.publishTime,
            "relativePublishTimeDescription" to review.relativePublishTimeDescription,
            "text" to review.text,
            "textLanguageCode" to review.textLanguageCode
        )
    }

    private fun photoMetadataToMap(photoMetadata: PhotoMetadata): Map<String, Any?> {
        val photoReference = getPhotoReference()
        photosCache[photoReference] = photoMetadata
        return mapOf(
            "width" to photoMetadata.width,
            "height" to photoMetadata.height,
            "attributions" to photoMetadata.attributions,
            "photoReference" to photoReference
        )
    }

    private fun authorAttributionToMap(authorAttribution: AuthorAttribution): Map<String, String?> {
        return mapOf<String, String?>(
            "name" to authorAttribution.name,
            "photoUri" to authorAttribution.photoUri,
            "uri" to authorAttribution.uri
        )
    }

    private fun getPhotoReference(): String {
        val num = runningUid++
        return "id_$num"
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
            "fullText" to result.getFullText(null).toString(),
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
        Places.initializeWithNewPlacesApiEnabled(applicationContext, apiKey ?: "", locale)
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
        private const val METHOD_SEARCH_BY_TEXT = "searchByText"
        private const val METHOD_NEARBY_SEARCH = "searchNearby"

        const val CHANNEL_NAME = "plugins.msh.com/flutter_google_places_sdk"
    }
}
