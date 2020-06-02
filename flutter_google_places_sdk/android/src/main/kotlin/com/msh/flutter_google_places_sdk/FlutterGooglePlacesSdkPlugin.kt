package com.msh.flutter_google_places_sdk

import android.content.Context
import androidx.annotation.NonNull
import com.google.android.libraries.places.api.Places
import com.google.android.libraries.places.api.model.AutocompletePrediction
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsRequest
import com.google.android.libraries.places.api.net.FindAutocompletePredictionsResponse
import com.google.android.libraries.places.api.net.PlacesClient
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import java.util.*


/** FlutterGooglePlacesSdkPlugin */
class FlutterGooglePlacesSdkPlugin : FlutterPlugin, MethodCallHandler {

  private lateinit var client: PlacesClient
  private lateinit var channel: MethodChannel
  private lateinit var applicationContext: Context

  override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    onAttachedToEngine(binding.applicationContext, binding.binaryMessenger)
  }

  private fun onAttachedToEngine(applicationContext: Context, binaryMessenger: BinaryMessenger) {
    this.applicationContext = applicationContext

    channel = MethodChannel(binaryMessenger, CHANNEL_NAME)
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      METHOD_INITIALIZE -> {
        val apiKey = call.argument<String>("apiKey")
        val localeMap = call.argument<Map<String, Any>>("locale")
        val locale = readLocale(localeMap)
        initialize(apiKey, locale)
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
        val request = FindAutocompletePredictionsRequest.builder()
                .setQuery(query)
                .setCountries(countries)
                .build()
        client.findAutocompletePredictions(request).addOnCompleteListener { task ->
          if (task.isSuccessful) {
            val resultList = responseToList(task.result)
            print("Result: $resultList");
            result.success(resultList)
          } else {
            val exception = task.exception
            result.error("API_ERROR", exception?.message ?: "Unknown exception", null)
          }
        }
      }
      else -> {
        result.notImplemented()
      }
    }
  }

  private fun responseToList(result: FindAutocompletePredictionsResponse?): List<Map<String, Any?>>? {
    if (result == null) {
      return null
    }

    return result.autocompletePredictions.map { item -> predictionToMap(item) }
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

    val language = localeMap["language"] as String
    val country = localeMap["country"] as String
    return Locale(language, country)
  }

  private fun initialize(apiKey: String?, locale: Locale?) {
    Places.initialize(applicationContext, apiKey ?: "", locale)
    client = Places.createClient(applicationContext)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  companion object {
    private const val METHOD_INITIALIZE = "initialize" // string apiKey, Locale locale
    private const val METHOD_DEINITIALIZE = "deinitialize"
    private const val METHOD_IS_INITIALIZE = "isInitialized"
    private const val METHOD_FIND_AUTOCOMPLETE_PREDICTIONS = "findAutocompletePredictions"

    const val CHANNEL_NAME = "plugins.msh.com/flutter_google_places_sdk"

    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val instance = FlutterGooglePlacesSdkPlugin()
      instance.onAttachedToEngine(registrar.context(), registrar.messenger())
    }
  }
}
