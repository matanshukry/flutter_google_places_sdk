@JS()
library places;

import 'dart:async';
import 'dart:html' as html;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_web/types/autocomplete_response_web.dart';
import 'package:flutter_google_places_sdk_web/types/autocomplete_service.dart';
import 'package:flutter_google_places_sdk_web/types/autocomplete_session_token.dart';
import 'package:flutter_google_places_sdk_web/types/autocompletion_request.dart';
import 'package:flutter_google_places_sdk_web/types/place_details_request.dart';
import 'package:flutter_google_places_sdk_web/types/places_service.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('initMap')
external set _initMap(void Function() f);

/// Web implementation plugin for flutter google places sdk
class FlutterGooglePlacesSdkWebPlugin extends FlutterGooglePlacesSdkPlatform {
  /// Register the plugin with the web implementation.
  /// Called by ?? when ??
  static void registerWith(Registrar registrar) {
    FlutterGooglePlacesSdkPlatform.instance = FlutterGooglePlacesSdkWebPlugin();
  }

  static const _SCRIPT_ID = 'flutter_google_places_sdk_web_script_id';

  Completer? _completer;

  AutocompleteService? _svcAutoComplete;
  PlacesService? _svcPlaces;
  AutocompleteSessionToken? _lastSessionToken;

  @override
  Future<void> deinitialize() {
    throw UnimplementedError('deinitialize() has not been implemented.');
  }

  @override
  Future<void> initialize(String apiKey, {Locale? locale}) async {
    if (_svcAutoComplete != null) {
      return;
    }

    final completer = Completer();
    _completer = completer;

    _initMap = allowInterop(_doInit);

    html.Element? scriptExist =
        html.window.document.querySelector('#$_SCRIPT_ID');
    if (scriptExist != null) {
      _doInit();
    } else {
      final body = html.window.document.querySelector('body')!;
      body.append(html.ScriptElement()
        ..id = _SCRIPT_ID
        ..src =
            'https://maps.googleapis.com/maps/api/js?key=${apiKey}&libraries=places&callback=initMap'
        ..async = true
        ..type = 'application/javascript');
    }

    return completer.future.then((_) {});
  }

  void _doInit() {
    _svcAutoComplete = AutocompleteService();
    _svcPlaces = PlacesService(html.window.document.createElement('div'));
    _completer!.complete();
  }

  @override
  Future<bool?> isInitialized() async {
    return _completer?.isCompleted == true;
  }

  @override
  Future<FindAutocompletePredictionsResponse> findAutocompletePredictions(
    String query, {
    List<String>? countries,
    bool? newSessionToken,
    LatLng? origin,
  }) async {
    await _completer;
    final prom = _svcAutoComplete!
        .getPlacePredictions(AutocompletionRequest(input: query));
    final resp = (await promiseToFuture(prom)) as AutocompleteResponse?;
    if (resp == null) {
      return FindAutocompletePredictionsResponse([]);
    }

    final predictions =
        resp.predictions.map(_translatePrediction).toList(growable: false);
    return FindAutocompletePredictionsResponse(predictions);
  }

  AutocompletePrediction _translatePrediction(
      AutocompletePredictionWeb prediction) {
    var main_text = prediction.structured_formatting.main_text;
    var secondary_text = prediction.structured_formatting.secondary_text;
    return AutocompletePrediction(
      distanceMeters: prediction.distance_meters,
      placeId: prediction.place_id,
      primaryText: main_text,
      secondaryText: secondary_text,
      fullText: '$main_text, $secondary_text',
    );
  }

  @override
  Future<FetchPlaceResponse> fetchPlace(
    String placeId, {
    List<PlaceField>? fields,
    bool? newSessionToken,
  }) async {
    final prom = _getDetails(PlaceDetailsRequest(
      placeId: placeId,
      fields: fields?.map(this._mapField).toList(growable: false),
      sessionToken: _lastSessionToken,
    ));

    final resp = await prom;
    return FetchPlaceResponse(resp.place);
  }

  String _mapField(PlaceField field) {
    switch (field) {
      case PlaceField.Address:
        return 'adr_address';
      case PlaceField.AddressComponents:
        return 'address_components';
      case PlaceField.BusinessStatus:
        return 'business_status';
      case PlaceField.Id:
        return 'place_id';
      case PlaceField.Location:
        return 'geometry.location';
      case PlaceField.Name:
        return 'name';
      case PlaceField.OpeningHours:
        return 'opening_hours';
      case PlaceField.PhoneNumber:
        return 'international_phone_number';
      case PlaceField.PhotoMetadatas:
        return 'photos';
      case PlaceField.PlusCode:
        return 'plus_code';
      case PlaceField.PriceLevel:
        return 'price_level';
      case PlaceField.Rating:
        return 'rating'; // not done yet
      case PlaceField.Types:
        return 'types';
      case PlaceField.UserRatingsTotal:
        return 'user_ratings_total';
      case PlaceField.UTCOffset:
        return 'utc_offset_minutes';
      case PlaceField.Viewport:
        return 'geometry.viewport';
      case PlaceField.WebsiteUri:
        return 'website';
      default:
        throw ArgumentError('Unsupported place field: $this');
    }
  }

  Future<_GetDetailsResponse> _getDetails(PlaceDetailsRequest request) {
    final completer = Completer<_GetDetailsResponse>();

    final GetDetailsCallback func = (place, status) {
      completer.complete(_GetDetailsResponse(_parsePlace(place), status));
    };

    final interop = allowInterop(func);
    _svcPlaces!.getDetails(request, interop);

    return completer.future;
  }

  Place? _parsePlace(dynamic place) {
    if (place == null) {
      return null;
    }

    return Place(
      address: place.adr_address,
      addressComponents: place.address_components
          ?.map(_parseAddressComponent)
          ?.cast<AddressComponent>()
          ?.toList(growable: false),
      businessStatus: _parseBusinessStatus(place.business_status),
      attributions: place.html_attributions.cast<String>(),
      latLng: _parseLatLang(place.geometry?.location),
      name: place.name,
      openingHours: _parseOpeningHours(place.opening_hours),
      phoneNumber: place.international_phone_number,
      photoMetadatas: place.photos
          ?.map((photo) => _parsePhotoMetadata(photo))
          ?.cast<PhotoMetadata>()
          ?.toList(growable: false),
      plusCode: _parsePlusCode(place.plus_code),
      priceLevel: place.price_level,
      rating: place.rating,
      types: place.types
          ?.map(_parsePlaceType)
          ?.where((item) => item != null)
          ?.cast<PlaceType>()
          ?.toList(growable: false),
      userRatingsTotal: place.user_ratings_total,
      utcOffsetMinutes: place.utc_offset_minutes,
      viewport: _parseLatLngBounds(place.geometry?.viewport),
      websiteUri: place.website == null ? null : Uri.parse(place.website),
    );
  }

  PlaceType? _parsePlaceType(dynamic placeType) {
    if (placeType == null) {
      return null;
    }

    placeType = placeType.toUpperCase();
    return PlaceType.values.cast<PlaceType?>().firstWhere(
        (element) => element!.value == placeType,
        orElse: () => null);
  }

  AddressComponent? _parseAddressComponent(dynamic addressComponent) {
    if (addressComponent == null) {
      return null;
    }

    return AddressComponent(
      name: addressComponent.long_name,
      shortName: addressComponent.short_name,
      types: addressComponent.types
          .map((e) => e.toString())
          .cast<String>()
          .toList(growable: false),
    );
  }

  LatLng? _parseLatLang(dynamic location) {
    if (location == null) {
      return null;
    }

    return LatLng(
      lat: location.lat(),
      lng: location.lng(),
    );
  }

  PhotoMetadata? _parsePhotoMetadata(dynamic photo) {
    if (photo == null) {
      return null;
    }

    return PhotoMetadata(
        attributions: photo.html_attributions.length == 1
            ? photo.html_attributions[0]
            : null,
        width: photo.width,
        height: photo.height);
  }

  LatLngBounds? _parseLatLngBounds(dynamic viewport) {
    if (viewport == null) {
      return null;
    }

    return LatLngBounds(
        southwest: _parseLatLang(viewport.getSouthWest())!,
        northeast: _parseLatLang(viewport.getNorthEast())!);
  }

  PlusCode? _parsePlusCode(dynamic plusCode) {
    if (plusCode == null) {
      return null;
    }

    return PlusCode(
        compoundCode: plusCode.compound_code, globalCode: plusCode.global_code);
  }

  BusinessStatus? _parseBusinessStatus(dynamic businessStatus) {
    if (businessStatus == null) {
      return null;
    }

    businessStatus = businessStatus.toUpperCase();
    return BusinessStatus.values.cast<BusinessStatus?>().firstWhere(
        (element) => element!.value == businessStatus,
        orElse: () => null);
  }

  OpeningHours? _parseOpeningHours(dynamic openingHours) {
    if (openingHours == null) {
      return null;
    }

    return OpeningHours(
        periods: openingHours.periods
            ?.map(_parsePeriod)
            ?.cast<Period>()
            ?.toList(growable: false),
        weekdayText:
            openingHours.weekday_text.cast<String>().toList(growable: false));
  }

  Period _parsePeriod(dynamic period) {
    return Period(
        open: _parseTimeOfWeek(period.open),
        close: _parseTimeOfWeek(period.close));
  }

  TimeOfWeek? _parseTimeOfWeek(dynamic timeOfWeek) {
    if (timeOfWeek == null) {
      return null;
    }

    return TimeOfWeek(
      day: _parseDayOfWeek(timeOfWeek.day),
      time:
          PlaceLocalTime(hours: timeOfWeek.hours, minutes: timeOfWeek.minutes),
    );
  }

  DayOfWeek _parseDayOfWeek(int day) {
    return DayOfWeek.values[day];
  }
}

/// A Place details response returned from PlacesService
class _GetDetailsResponse {
  /// Construct a new response
  const _GetDetailsResponse(this.place, this.status);

  /// The place of the response.
  final Place? place;

  /// The status of the response.
  final String status;
}
