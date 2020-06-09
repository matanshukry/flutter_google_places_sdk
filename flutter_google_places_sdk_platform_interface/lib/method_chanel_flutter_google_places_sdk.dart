import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';

const String _CHANNEL_NAME = 'plugins.msh.com/flutter_google_places_sdk';

const MethodChannel _channel = MethodChannel(_CHANNEL_NAME);

// An implementation of [FlutterGooglePlacesSdkPlatform] that uses method channels.
class FlutterGooglePlacesSdkMethodChannel
    extends FlutterGooglePlacesSdkPlatform {
  static const CHANNEL_NAME = _CHANNEL_NAME;

  @override
  Future<bool> isInitialized() {
    return _channel.invokeMethod<bool>('isInitialized');
  }

  @override
  Future<void> initialize(String apiKey, {Locale locale}) {
    return _channel.invokeMethod<void>('initialize', {
      'apiKey': apiKey,
      'locale': locale == null
          ? null
          : {
              'country': locale.countryCode,
              'language': locale.languageCode,
            },
    });
  }

  @override
  Future<void> deinitialize() {
    return _channel.invokeMethod<void>('deinitialize');
  }

  /* Client methods */
  @override
  Future<FindAutocompletePredictionsResponse> findAutocompletePredictions(
      String query,
      {List<String> countries}) {
    if (query?.isEmpty ?? true) {
      throw ArgumentError('Argument query can not be empty');
    }
    return _channel.invokeListMethod<Map<dynamic, dynamic>>(
        'findAutocompletePredictions', {
      'query': query,
      'countries': countries ?? [],
    }).then(_responseFromResult);
  }

  FindAutocompletePredictionsResponse _responseFromResult(List<dynamic> value) {
    final items = (value ?? <Map<dynamic, dynamic>>[])
        .map((item) => item.cast<String, dynamic>())
        .map((map) => AutocompletePrediction.fromMap(map))
        .toList(growable: false);

    return FindAutocompletePredictionsResponse(items);
  }
}
