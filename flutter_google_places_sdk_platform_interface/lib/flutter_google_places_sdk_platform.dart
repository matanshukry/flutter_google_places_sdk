import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/method_channel_flutter_google_places_sdk.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// A [PlatformInterface] for flutter google places sdk
abstract class FlutterGooglePlacesSdkPlatform extends PlatformInterface {
  FlutterGooglePlacesSdkPlatform() : super(token: _token);

  /// "Powered by google" image that should be used when background is white
  static const AssetImage ASSET_POWERED_BY_GOOGLE_ON_WHITE = AssetImage(
      'assets/google/powered_by_google_on_white.png',
      package: 'flutter_google_places_sdk_platform_interface');

  /// "Powered by google" image that should be used when background is not white
  static const AssetImage ASSET_POWERED_BY_GOOGLE_ON_NON_WHITE = AssetImage(
      'assets/google/powered_by_google_on_non_white.png',
      package: 'flutter_google_places_sdk_platform_interface');

  static final Object _token = Object();

  static FlutterGooglePlacesSdkPlatform _instance =
      FlutterGooglePlacesSdkMethodChannel();

  /// Singleton instance to the platform
  static FlutterGooglePlacesSdkPlatform get instance => _instance;

  /// Sets a different value for [instance].
  ///
  /// This should only be used in tests, if at all.
  static set instance(FlutterGooglePlacesSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// This puts Places into its uninitialized state.
  ///
  /// Note: this does not need to be called in order to change the API key
  Future<void> deinitialize() {
    throw UnimplementedError('deinitialize() has not been implemented.');
  }

  /// Initializes Places for the given application context with the given API key.
  ///
  /// All Places API responses are localized using the device's locale.
  /// This method should only be called once prior to using the Places API.
  /// You may call this method again to update the API key used;
  /// if so, all widgets and instances of PlacesClient will now use this new key.
  Future<void> initialize(String apiKey, {Locale? locale}) {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  /// Returns whether or not the internal Places client has been initialized.
  Future<bool?> isInitialized() {
    throw UnimplementedError('isInitialized() has not been implemented.');
  }

  /// Updates the settings of the places client with the given API key and locale.
  Future<void> updateSettings(String apiKey, {Locale? locale}) {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  /// Fetches autocomplete predictions based on a query.
  ///
  /// If [countries]] is not null, the results are restricted to those countries.
  ///
  /// [AutocompletePrediction.distanceMeters] is calculated from [origin],
  /// if available. If [origin] is null, no distances will be included in the
  /// response.
  ///
  /// When making multiple requests, a session token is saved on one request
  /// and the same is sent to the following ones
  ///
  /// If [newSessionToken] is null, a previously-saved session token will be used.
  /// If there is no previously-saved session token exist, a request without
  /// a session token will be saved and the result token will be saved.
  ///
  /// For more about session tokens: https://developers.google.com/maps/documentation/places/android-sdk/session-tokens
  Future<FindAutocompletePredictionsResponse> findAutocompletePredictions(
    String query, {
    List<String>? countries,
    List<PlaceTypeFilter> placeTypesFilter = const [],
    bool? newSessionToken,
    LatLng? origin,
    LatLngBounds? locationBias,
    LatLngBounds? locationRestriction,
  }) {
    throw UnimplementedError(
        'findAutocompletePredictions() has not been implemented.');
  }

  /// Fetches the details of a place.
  /// Only the requested [fields] will be returned. If none specified,
  /// all fields will be returned.
  ///
  /// Note that different fields can incur different billing.
  ///
  /// For more info about billing: https://developers.google.com/maps/documentation/places/web-service/usage-and-billing
  Future<FetchPlaceResponse> fetchPlace(
    String placeId, {
    required List<PlaceField> fields,
    bool? newSessionToken,
  }) {
    throw UnimplementedError('fetchPlaceDetails() has not been implemented.');
  }

  /// Fetches a photo of a place.
  ///
  /// Before fetching a place photo the place it self must be fetched,
  /// together with the [PlaceField.PhotoMetadatas] field
  ///
  /// For more info: https://developers.google.com/maps/documentation/places/android-sdk/photos
  Future<FetchPlacePhotoResponse> fetchPlacePhoto(
    PhotoMetadata photoMetadata, {
    int? maxWidth,
    int? maxHeight,
  }) {
    throw UnimplementedError('fetchPlacePhoto() has not been implemented.');
  }
}
