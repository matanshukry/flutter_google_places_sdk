import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
export 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';

/// Client used to call methods on the native google places sdk
class FlutterGooglePlacesSdk {
  /// Construct a FlutterGooglePlacesSdk using the specific api key and locale
  FlutterGooglePlacesSdk(this._apiKey, {Locale? locale})
      : this._locale = locale;

  /// "Powered by google" image that should be used when background is white
  static const AssetImage ASSET_POWERED_BY_GOOGLE_ON_WHITE =
      FlutterGooglePlacesSdkPlatform.ASSET_POWERED_BY_GOOGLE_ON_WHITE;

  /// "Powered by google" image that should be used when background is not white
  static const AssetImage ASSET_POWERED_BY_GOOGLE_ON_NON_WHITE =
      FlutterGooglePlacesSdkPlatform.ASSET_POWERED_BY_GOOGLE_ON_NON_WHITE;

  /// Singleton instance to the platform
  static FlutterGooglePlacesSdkPlatform platform =
      FlutterGooglePlacesSdkPlatform.instance;

  /// The Places API key
  /// https://developers.google.com/maps/documentation/places/android-sdk/get-api-key
  String get apiKey => _apiKey;

  String _apiKey;

  /// The locale in which Places API responses will be localized. If null, the device locale at the point of request is used.
  Locale? get locale => _locale;

  Locale? _locale;

  Future<void>? _lastMethodCall;
  Future<void>? _initialization;

  Future<T> _addMethodCall<T>(Future<T> Function() method) async {
    Future<T> response;
    if (_lastMethodCall == null) {
      response = _callMethod(method);
    } else {
      response = _lastMethodCall!.then((_) {
        return _callMethod(method);
      });
    }
    _lastMethodCall = _waitFor(response);
    return response;
  }

  static Future<void> _waitFor(Future<void> future) {
    final Completer<void> completer = Completer<void>();
    future.whenComplete(completer.complete).catchError((dynamic err) {
      // Ignore if previous call completed with an error.
      print('FlutterGooglePlacesSdk::call error: $err');
      throw err;
    });
    return completer.future;
  }

  Future<T> _callMethod<T>(Future<T> Function() method) async {
    await _ensureInitialized();
    return await method();
  }

  Future<void> _ensureInitialized() {
    return _initialization ??= platform.initialize(apiKey, locale: locale)
      ..catchError((dynamic err) {
        print('FlutterGooglePlacesSdk::_ensureInitialized error: $err');
        _initialization = null;
      });
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
    return _addMethodCall(() => platform.findAutocompletePredictions(
          query,
          countries: countries,
          placeTypesFilter: placeTypesFilter,
          newSessionToken: newSessionToken,
          origin: origin,
          locationBias: locationBias,
          locationRestriction: locationRestriction,
        ));
  }

  /// Fetches the details of a place.
  /// Only the requested [fields] will be returned. If none specified,
  /// all fields will be returned.
  ///
  /// Note that different fields can incur different billing.
  ///
  /// For more info about billing: https://developers.google.com/maps/documentation/places/web-service/usage-and-billing
  Future<FetchPlaceResponse> fetchPlace(String placeId,
      {required List<PlaceField> fields}) {
    return _addMethodCall(() => platform.fetchPlace(placeId, fields: fields));
  }

  /// Fetches a photo of a place.
  ///
  /// Before fetching a place photo the place it self must be fetched,
  /// together with the [PlaceField.PhotoMetadatas] field
  ///
  /// For more info: https://developers.google.com/maps/documentation/places/android-sdk/photos
  Future<FetchPlacePhotoResponse> fetchPlacePhoto(PhotoMetadata photoMetadata,
      {int? maxWidth, int? maxHeight}) {
    return _addMethodCall(() => platform.fetchPlacePhoto(photoMetadata,
        maxWidth: maxWidth, maxHeight: maxHeight));
  }

  /// Returns whether or not the client has been initialized.
  Future<bool?> isInitialized() {
    return _addMethodCall(platform.isInitialized);
  }

  /// Updates the settings of the places client with the given API key and locale.
  /// If apiKey is null, the last key will be used.
  /// If locale is null, it will not be updated.
  Future<void> updateSettings({String? apiKey, Locale? locale}) {
    _apiKey = apiKey ?? this.apiKey;
    _locale = locale;

    return _addMethodCall(
        () => platform.updateSettings(_apiKey, locale: locale));
  }
}
