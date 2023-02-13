import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_macos/types/place_details/place_details_response.dart';
import 'package:flutter_google_places_sdk_macos/types/place_field.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart'
    as inter;
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart' as latlnglib;

import 'types/types.dart';

final _kLogPrefix = 'flutter_google_place_sdk_macos_plugin :: WARN -';

/// macOS implementation plugin for flutter google places sdk
class FlutterGooglePlacesSdkMacosPlugin
    extends inter.FlutterGooglePlacesSdkPlatform {
  /// Registers this class as the default instance of [FlutterGooglePlacesSdkPlatform].
  static void registerWith() {
    inter.FlutterGooglePlacesSdkPlatform.instance =
        FlutterGooglePlacesSdkMacosPlugin();
  }

  static const _kAPI_HOST = 'https://maps.googleapis.com';

  static const _kAPI_PLACES = '${_kAPI_HOST}/maps/api/place';

  String? _apiKey;
  Locale? _locale;

  String? _lastSessionToken;

  @override
  Future<void> deinitialize() async {
    _apiKey = null;
    _locale = null;
  }

  @override
  Future<void> initialize(String apiKey, {Locale? locale}) async {
    _apiKey = apiKey;
    _locale = locale;
  }

  @override
  Future<bool?> isInitialized() async => _apiKey != null;

  @override
  Future<void> updateSettings(String apiKey, {Locale? locale}) async {
    _apiKey = apiKey;
    if (locale != null) {
      _locale = locale;
    }
  }

  @override
  Future<inter.FindAutocompletePredictionsResponse> findAutocompletePredictions(
    String query, {
    List<String>? countries,
    inter.PlaceTypeFilter placeTypeFilter = inter.PlaceTypeFilter.ALL,
    bool? newSessionToken,
    inter.LatLng? origin,
    inter.LatLngBounds? locationBias,
    inter.LatLngBounds? locationRestriction,
  }) async {
    final sessionToken = (newSessionToken ?? false) ? null : _lastSessionToken;
    final url = _buildAutocompleteUrl(query, countries, placeTypeFilter,
        sessionToken, origin, locationBias, locationRestriction);

    final PlacesAutocompleteResponse response =
        await _doGet(url, (json) => PlacesAutocompleteResponse.fromJson(json));

    if (response.status != PlacesAutocompleteStatus.OK &&
        response.status != PlacesAutocompleteStatus.ZERO_RESULTS) {
      throw response;
    }

    final predictions = response.predictions
        .map((e) => e.toInterface())
        .toList(growable: false);
    return inter.FindAutocompletePredictionsResponse(predictions);
  }

  @override
  Future<inter.FetchPlaceResponse> fetchPlace(
    String placeId, {
    List<inter.PlaceField>? fields,
    bool? newSessionToken,
  }) async {
    final sessionToken = (newSessionToken ?? false) ? null : _lastSessionToken;
    final url = _buildFetchPlaceUrl(placeId, fields, sessionToken);

    final PlaceDetailsResponse response = await _doGet(url, (json) {
      return PlaceDetailsResponse.fromJson(json);
    });

    if (response.status != PlacesAutocompleteStatus.OK) {
      throw response;
    }
    final place = response.result.toInterface();
    return inter.FetchPlaceResponse(place);
  }

  @override
  Future<inter.FetchPlacePhotoResponse> fetchPlacePhoto(
    inter.PhotoMetadata photoMetadata, {
    int? maxWidth,
    int? maxHeight,
  }) async {
    throw UnimplementedError();
  }

  String _buildFetchPlaceUrl(
    String placeId,
    List<inter.PlaceField>? fields,
    String? sessionToken,
  ) {
    final parsedFields = fields?.map((e) => e.field).toList();

    var url = '${_kAPI_PLACES}/details/json?place_id=${placeId}&key=${_apiKey}';

    // -- Language (from _locale)
    final langCode = _locale?.languageCode;
    if (langCode != null) {
      url += '&language=$langCode';
    }
    // -- Place Type
    if (parsedFields != null) {
      final strFields =
          parsedFields.map((field) => field.value.toLowerCase()).join(',');
      url += '&fields=$strFields';
    }

    // -- Session Token
    if (sessionToken != null) {
      url += '&sessionToken=$sessionToken';
    }

    return url;
  }

  String _buildAutocompleteUrl(
    String query,
    List<String>? countries,
    inter.PlaceTypeFilter placeTypeFilter,
    String? sessionToken,
    inter.LatLng? origin,
    inter.LatLngBounds? locationBias,
    inter.LatLngBounds? locationRestriction,
  ) {
    var url = '${_kAPI_PLACES}/autocomplete/json?input=${query}&key=${_apiKey}';

    // -- Language (from _locale)
    final langCode = _locale?.languageCode;
    if (langCode != null) {
      url += '&language=$langCode';
    }

    // -- Countries (to Components)
    if (countries != null) {
      final strCountries =
          countries.map((country) => 'country:$country').join('|');
      url += '&components=${strCountries}';
    }

    // -- Place Type
    if (placeTypeFilter != inter.PlaceTypeFilter.ALL) {
      url += '&types=${placeTypeFilter.value.toLowerCase()}';
    }

    // -- Session Token
    if (sessionToken != null) {
      url += '&sessionToken=${sessionToken}';
    }

    // -- Origin
    if (origin != null) {
      url += _addUrlParam('origin', origin);
    }

    // -- Location Bias/Restrictions
    if (locationBias != null && locationRestriction != null) {
      print(
          '${_kLogPrefix}Only locationBias OR locationRestriction are supported - not both. Using locationRestriction');
    }

    final loc = locationRestriction ?? locationBias;
    if (loc != null) {
      url += _addUrlParam('location', loc.center);
      url += '&radius=${loc.radius}';
      if (locationRestriction != null) {
        url += '&strictbounds=true';
      }
    }

    return url;
  }

  Future<T> _doGet<T>(
      String url, T Function(Map<String, Object?>) jsonParser) async {
    final response = await http.get(Uri.parse(url));

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

  String _addUrlParam(String name, inter.LatLng point) {
    return '&$name=${point.lat}%2C${point.lng}';
  }
}

extension _LatLngExt on inter.LatLngBounds {
  double get radius {
    final distance = latlnglib.Distance();
    final latLng1 = latlnglib.LatLng(southwest.lat, southwest.lng);
    final latLng2 = latlnglib.LatLng(northeast.lat, northeast.lng);

    return distance.distance(latLng1, latLng2) / 2.0;
  }

  inter.LatLng get center {
    final latMiddle = (southwest.lat + northeast.lat) / 2.0;

    final lngMiddle;
    if ((southwest.lng) <= northeast.lng) {
      lngMiddle = (northeast.lng + southwest.lng) / 2.0;
    } else {
      lngMiddle = (northeast.lng + southwest.lng + 360) / 2.0;
    }

    return inter.LatLng(lat: latMiddle, lng: lngMiddle);
  }
}
