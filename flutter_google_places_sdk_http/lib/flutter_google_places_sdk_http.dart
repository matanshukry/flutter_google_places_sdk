import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart'
    as inter;
import 'package:http/http.dart' as http;

import 'types/types.dart';

final _kLogPrefix = 'flutter_google_place_sdk_windows_plugin :: WARN -';

/// Http implementation plugin for flutter google places sdk
class FlutterGooglePlacesSdkHttpPlugin
    extends inter.FlutterGooglePlacesSdkPlatform {
  static const _kAPI_HOST_V2 = 'https://places.googleapis.com';
  static const _kAPI_PLACES_V2 = '${_kAPI_HOST_V2}/v1/places:autocomplete';

  String? _apiKey;
  Locale? _locale;

  String? _lastSessionToken;

  @override
  Future<void> deinitialize() async {
    _apiKey = null;
    _locale = null;
  }

  @override
  Future<void> initialize(String apiKey, {Locale? locale, bool useNewApi = false}) async {
    _apiKey = apiKey;
    _locale = locale;
  }

  @override
  Future<bool?> isInitialized() async => _apiKey != null;

  @override
  Future<void> updateSettings(String apiKey, {Locale? locale, bool? useNewApi}) async {
    _apiKey = apiKey;
    if (locale != null) {
      _locale = locale;
    }
  }

  @override
  Future<inter.FindAutocompletePredictionsResponse> findAutocompletePredictions(
    String query, {
    List<String>? countries,
    List<String> placeTypesFilter = const [],
    bool? newSessionToken,
    inter.LatLng? origin,
    inter.LatLngBounds? locationBias,
    inter.LatLngBounds? locationRestriction,
  }) async {
    final sessionToken = (newSessionToken ?? false) ? null : _lastSessionToken;

    final PlacesAutocompleteResponse response = await _findAutocompleteNewApi(
      query,
      countries,
      placeTypesFilter,
      sessionToken,
      origin,
      locationBias,
      locationRestriction,
    );

    if (response.status != PlacesAutocompleteStatus.OK &&
        response.status != PlacesAutocompleteStatus.ZERO_RESULTS) {
      throw response;
    }

    final predictions = response.predictions
        .map((e) => e.toInterface())
        .toList(growable: false);
    return inter.FindAutocompletePredictionsResponse(predictions);
  }

  Future<PlacesAutocompleteResponse> _findAutocompleteNewApi(
    String query,
    List<String>? countries,
    List<String> placeTypesFilter,
    String? sessionToken,
    inter.LatLng? origin,
    inter.LatLngBounds? locationBias,
    inter.LatLngBounds? locationRestriction,
  ) {
    final headers = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': _apiKey!,
    };
    final body = _buildAutocompleteBody(
      query,
      countries,
      placeTypesFilter,
      sessionToken,
      origin,
      locationBias,
      locationRestriction,
    );
    final bodyJson = jsonEncode(body);

    return _doPost(
      _kAPI_PLACES_V2,
      bodyJson,
      (json) => PlacesAutocompleteResponse.fromJson(json),
      headers: headers,
    );
  }

  Map<String, dynamic> _buildAutocompleteBody(
    String query,
    List<String>? countries,
    List<String> placeTypesFilter,
    String? sessionToken,
    inter.LatLng? origin,
    inter.LatLngBounds? locationBias,
    inter.LatLngBounds? locationRestriction,
  ) {
    final data = <String, dynamic>{'input': query};

    // -- Language (from _locale)
    final langCode = _locale?.languageCode;
    if (langCode != null) {
      data['languageCode'] = langCode;
    }

    // -- Place Type
    if (placeTypesFilter.isNotEmpty) {
      data['includedPrimaryTypes'] = placeTypesFilter;
    }

    // -- Session Token
    if (sessionToken != null) {
      data['sessionToken'] = sessionToken;
    }

    // -- Origin
    if (origin != null) {
      data['origin'] = {'latitude': origin.lat, 'longitude': origin.lng};
    }

    // -- Location Bias/Restrictions
    if (locationBias != null && locationRestriction != null) {
      print(
        '${_kLogPrefix}Only locationBias OR locationRestriction are supported - not both. Using locationRestriction',
      );
    }

    return data;
  }

  @override
  Future<inter.FetchPlaceResponse> fetchPlace(
    String placeId, {
    List<inter.PlaceField>? fields,
    bool? newSessionToken,
    String? regionCode,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<inter.FetchPlacePhotoResponse> fetchPlacePhoto(
    inter.PhotoMetadata photoMetadata, {
    int? maxWidth,
    int? maxHeight,
  }) async {
    throw UnimplementedError();
  }

  Future<T> _doPost<T>(
    String url,
    Object body,
    T Function(Map<String, Object?>) jsonParser, {
    Map<String, String> headers = const {},
  }) async {
    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    String? strBody = null;
    String strBodyErr = '';
    try {
      strBody = utf8.decode(response.bodyBytes);
    } catch (err) {
      strBodyErr = 'Failed decoding body! ' + err.toString();
    }
    if (response.statusCode < 200 ||
        response.statusCode >= 300 ||
        strBody == null) {
      final err =
          "Bad result on call to $url. Status code (${response.statusCode}), body: $strBody, bodyFetchErr (if any): $strBodyErr";
      throw err;
    }

    final Map<String, Object?> jsonBody = jsonDecode(strBody);
    return jsonParser(jsonBody);
  }
}
