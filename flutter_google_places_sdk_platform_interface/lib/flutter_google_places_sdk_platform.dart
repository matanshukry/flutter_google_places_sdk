import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/method_chanel_flutter_google_places_sdk.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/find_autocomplete_predictions_response.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/place_details.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class FlutterGooglePlacesSdkPlatform extends PlatformInterface {
  FlutterGooglePlacesSdkPlatform() : super(token: _token);

  static const AssetImage ASSET_POWERED_BY_GOOGLE_ON_WHITE = AssetImage(
      'assets/google/powered_by_google_on_white.png',
      package: 'flutter_google_places_sdk_platform_interface');

  static const AssetImage ASSET_POWERED_BY_GOOGLE_ON_NON_WHITE = AssetImage(
      'assets/google/powered_by_google_on_non_white.png',
      package: 'flutter_google_places_sdk_platform_interface');

  static FlutterGooglePlacesSdkPlatform _instance =
      FlutterGooglePlacesSdkMethodChannel();

  static final Object _token = Object();

  static FlutterGooglePlacesSdkPlatform get instance => _instance;

  static set instance(FlutterGooglePlacesSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> deinitialize() {
    throw UnimplementedError('deinitialize() has not been implemented.');
  }

  Future<void> initialize(String apiKey, {Locale locale}) {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<bool> isInitialized() {
    throw UnimplementedError('isInitialized() has not been implemented.');
  }

  Future<FindAutocompletePredictionsResponse> findAutocompletePredictions(
      String query,
      {List<String> countries,
      bool newSessionToken,
      Location origin,}) {
    throw UnimplementedError(
        'findAutocompletePredictions() has not been implemented.');
  }

  Future<PlaceDetails> fetchPlaceDetails(
    String placeId,
    List<PlaceField> fields,
  ) {
    throw UnimplementedError(
        'fetchPlaceDetails() has not been implemented.');
  }
}
