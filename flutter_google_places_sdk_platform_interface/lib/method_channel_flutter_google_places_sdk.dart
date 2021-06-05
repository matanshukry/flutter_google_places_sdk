import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/src/types/fetch_place_response.dart';

const String _CHANNEL_NAME = 'plugins.msh.com/flutter_google_places_sdk';

const MethodChannel _channel = MethodChannel(_CHANNEL_NAME);

// An implementation of [FlutterGooglePlacesSdkPlatform] that uses method channels.
class FlutterGooglePlacesSdkMethodChannel
    extends FlutterGooglePlacesSdkPlatform {
  static const CHANNEL_NAME = _CHANNEL_NAME;

  @override
  Future<bool?> isInitialized() {
    return _channel.invokeMethod<bool>('isInitialized');
  }

  @override
  Future<void> initialize(String apiKey, {Locale? locale}) {
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
    String query, {
    List<String>? countries,
    bool? newSessionToken,
    LatLng? origin,
  }) {
    if (query.isEmpty) {
      throw ArgumentError('Argument query can not be empty');
    }
    return _channel.invokeListMethod<Map<dynamic, dynamic>>(
      'findAutocompletePredictions',
      {
        'query': query,
        'countries': countries ?? [],
        'newSessionToken': newSessionToken,
        'origin': origin?.toMap(),
      },
    ).then(_responseFromResult);
  }

  FindAutocompletePredictionsResponse _responseFromResult(
    List<Map<dynamic, dynamic>>? value,
  ) {
    final items = value
            ?.map((item) => item.cast<String, dynamic>())
            .map((map) => AutocompletePrediction.fromMap(map))
            .toList(growable: false) ??
        [];
    return FindAutocompletePredictionsResponse(items);
  }

  @override
  Future<FetchPlaceResponse> fetchPlace(
    String placeId, {
    List<PlaceField>? fields,
    bool? newSessionToken,
  }) {
    return _channel.invokeMapMethod(
      'fetchPlace',
      {
        'placeId': placeId,
        'fields': fields?.map((e) => e.value).toList() ?? [],
        'newSessionToken': newSessionToken,
      },
    ).then(_responseFromPlaceDetails);
  }

  FetchPlaceResponse _responseFromPlaceDetails(dynamic value) {
    final Place? place =
        value == null ? null : Place.fromMap(value.cast<String, dynamic>());
    return FetchPlaceResponse(place);
  }
}
