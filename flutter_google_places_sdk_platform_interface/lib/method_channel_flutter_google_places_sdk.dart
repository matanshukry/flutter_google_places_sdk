import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';

const String _CHANNEL_NAME = 'plugins.msh.com/flutter_google_places_sdk';

const MethodChannel _channel = MethodChannel(_CHANNEL_NAME);

/// An implementation of [FlutterGooglePlacesSdkPlatform] that uses method channels.
class FlutterGooglePlacesSdkMethodChannel
    extends FlutterGooglePlacesSdkPlatform {
  static const CHANNEL_NAME = _CHANNEL_NAME;

  @override
  Future<bool?> isInitialized() {
    return _channel.invokeMethod<bool>('isInitialized');
  }

  @override
  Future<void> initialize(String apiKey, {Locale? locale}) {
    return _invokeForSettings('initialize', apiKey, locale);
  }

  @override
  Future<void> deinitialize() {
    return _channel.invokeMethod<void>('deinitialize');
  }

  @override
  Future<void> updateSettings(
    String apiKey, {
    Locale? locale,
  }) {
    return _invokeForSettings('updateSettings', apiKey, locale);
  }

  Future<void> _invokeForSettings(
    String methodName,
    String apiKey,
    Locale? locale,
  ) {
    return _channel.invokeMethod<void>(methodName, {
      'apiKey': apiKey,
      'locale': locale == null
          ? null
          : {'country': locale.countryCode, 'language': locale.languageCode},
    });
  }

  /* Client methods */

  @override
  Future<FindAutocompletePredictionsResponse> findAutocompletePredictions(
    String query, {
    List<String>? countries,
    List<String> placeTypesFilter = const [],
    bool? newSessionToken,
    LatLng? origin,
    LatLngBounds? locationBias,
    LatLngBounds? locationRestriction,
  }) {
    if (query.isEmpty) {
      throw ArgumentError('Argument query can not be empty');
    }
    return _channel
        .invokeListMethod<Map<dynamic, dynamic>>(
          'findAutocompletePredictions',
          {
            'query': query,
            'countries': countries ?? [],
            'typesFilter': placeTypesFilter,
            'newSessionToken': newSessionToken,
            'origin': origin?.toJson(),
            'locationBias': locationBias?.toJson(),
            'locationRestriction': locationRestriction?.toJson(),
          },
        )
        .then(_responseFromResult);
  }

  FindAutocompletePredictionsResponse _responseFromResult(
    List<Map<dynamic, dynamic>>? value,
  ) {
    final items =
        value
            ?.map((item) => item.cast<String, dynamic>())
            .map((map) => AutocompletePrediction.fromJson(map))
            .toList(growable: false) ??
        [];
    return FindAutocompletePredictionsResponse(items);
  }

  @override
  Future<FetchPlaceResponse> fetchPlace(
    String placeId, {
    required List<PlaceField> fields,
    bool? newSessionToken,
    String? regionCode,
  }) {
    return _channel
        .invokeMapMethod('fetchPlace', {
          'placeId': placeId,
          'fields': fields.map((field) => field.name).toList(),
          'newSessionToken': newSessionToken,
          'regionCode': regionCode,
        })
        .then(_responseFromPlaceDetails);
  }

  FetchPlaceResponse _responseFromPlaceDetails(dynamic value) {
    final Place? place = value == null
        ? null
        : Place.fromJson(value.cast<String, dynamic>());
    return FetchPlaceResponse(place);
  }

  @override
  Future<FetchPlacePhotoResponse> fetchPlacePhoto(
    PhotoMetadata photoMetadata, {
    int? maxWidth,
    int? maxHeight,
  }) {
    return _channel
        .invokeMethod('fetchPlacePhoto', {
          'photoReference': photoMetadata.photoReference,
          'maxWidth': maxWidth,
          'maxHeight': maxHeight,
        })
        .then(_responseFromPlacePhoto);
  }

  FetchPlacePhotoResponse _responseFromPlacePhoto(dynamic value) {
    if (value is Uint8List) {
      final image = Image.memory(value);
      return FetchPlacePhotoResponse.image(image);
    }

    if (value is String) {
      return FetchPlacePhotoResponse.imageUrl(value);
    }

    throw PlatformException(
      code: 'API_ERROR_PHOTO',
      message: 'Invalid platform response from fetchPlacePhoto',
      details: 'Response: $value',
    );
  }

  @override
  Future<SearchByTextResponse> searchByText(
    String textQuery, {
    required List<PlaceField> fields,
    String? includedType,
    int? maxResultCount,
    LatLngBounds? locationBias,
    LatLngBounds? locationRestriction,
    double? minRating,
    bool? openNow,
    List<int>? priceLevels,
    TextSearchRankPreference? rankPreference,
    String? regionCode,
    bool? strictTypeFiltering,
  }) {
    if (textQuery.isEmpty) {
      throw ArgumentError('Argument query can not be empty');
    }
    return _channel
        .invokeListMethod<Map<dynamic, dynamic>>('searchByText', {
          'textQuery': textQuery,
          'fields': fields.map((e) => e.value).toList(),
          'includedType': includedType,
          'maxResultCount': maxResultCount,
          'locationBias': locationBias?.toJson(),
          'locationRestriction': locationRestriction?.toJson(),
          'minRating': minRating,
          'openNow': openNow,
          'priceLevels': priceLevels,
          'rankPreference': rankPreference?.value,
          'regionCode': regionCode,
          'strictTypeFiltering': strictTypeFiltering,
        })
        .then(_responseFromTextSearch);
  }

  SearchByTextResponse _responseFromTextSearch(
    List<Map<dynamic, dynamic>>? value,
  ) {
    final items =
        value
            ?.map((item) => item.cast<String, dynamic>())
            .map((map) => Place.fromJson(map))
            .toList(growable: false) ??
        [];
    return SearchByTextResponse(items);
  }

  @override
  Future<SearchNearbyResponse> searchNearby({
    required List<PlaceField> fields,
    required CircularBounds locationRestriction,
    List<String>? includedTypes,
    List<String>? includedPrimaryTypes,
    List<String>? excludedTypes,
    List<String>? excludedPrimaryTypes,
    NearbySearchRankPreference? rankPreference,
    String? regionCode,
    int? maxResultCount,
  }) {
    return _channel
        .invokeListMethod<Map<dynamic, dynamic>>('searchNearby', {
          'fields': fields.map((e) => e.value).toList(),
          'locationRestriction': locationRestriction.toJson(),
          'includedTypes': includedTypes,
          'includedPrimaryTypes': includedPrimaryTypes,
          'excludedTypes': excludedTypes,
          'excludedPrimaryTypes': excludedPrimaryTypes,
          'rankPreference': rankPreference?.value,
          'regionCode': regionCode,
          'maxResultCount': maxResultCount,
        })
        .then(_responseFromNearbySearch);
  }

  SearchNearbyResponse _responseFromNearbySearch(
    List<Map<dynamic, dynamic>>? value,
  ) {
    final items =
        value
            ?.map((item) => item.cast<String, dynamic>())
            .map((map) => Place.fromJson(map))
            .toList(growable: false) ??
        [];
    return SearchNearbyResponse(items);
  }
}
