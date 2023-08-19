@JS()
library places;

import 'dart:async';
import 'dart:developer';
import 'dart:html' as html;
import 'dart:js_util';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart'
    as inter;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps.dart' as core;
import 'package:google_maps/google_maps_places.dart' as places;
import 'package:google_maps/google_maps_places.dart';
import 'package:js/js.dart';

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

  // Language
  String? _language;

  // Cache for photos
  final _photosCache = <String, PlacePhoto>{};
  var _runningUid = 1;

  @override
  Future<void> deinitialize() async {
    // Nothing to do; there is no de-initialize for web
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
      var src =
          'https://maps.googleapis.com/maps/api/js?key=${apiKey}&libraries=places&callback=initMap';
      if (locale?.languageCode != null) {
        _language = locale?.languageCode;
      }
      body.append(html.ScriptElement()
        ..id = _SCRIPT_ID
        ..src = src
        ..async = true
        ..type = 'application/javascript');
    }

    return completer.future.then((_) {});
  }

  @override
  Future<void> updateSettings(String apiKey, {Locale? locale}) async {
    if (locale != null) {
      _language = locale.languageCode;
    }
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
    List<PlaceTypeFilter> placeTypesFilter = const [],
    bool? newSessionToken,
    inter.LatLng? origin,
    inter.LatLngBounds? locationBias,
    inter.LatLngBounds? locationRestriction,
  }) async {
    await _completer;
    final typeFilterStr =
        placeTypesFilter.map(_placeTypeToStr).toList(growable: false);
    if (locationRestriction != null) {
      // https://issuetracker.google.com/issues/36219203
      log("locationRestriction is not supported: https://issuetracker.google.com/issues/36219203");
    }
    final prom = _svcAutoComplete!.getPlacePredictions(AutocompletionRequest()
      ..input = query
      ..origin = origin == null ? null : core.LatLng(origin.lat, origin.lng)
      ..types = typeFilterStr.isEmpty ? null : typeFilterStr
      ..componentRestrictions = (ComponentRestrictions()..country = countries)
      ..bounds = _boundsToWeb(locationBias)
      ..language = _language);
    final resp = await prom;

    final predictions = resp.predictions
            ?.whereNotNull()
            .map(_translatePrediction)
            .toList(growable: false) ??
        [];
    return FindAutocompletePredictionsResponse(predictions);
  }

  String? _placeTypeToStr(PlaceTypeFilter placeTypeFilter) {
    switch (placeTypeFilter) {
      case PlaceTypeFilter.ADDRESS:
        return "address";
      case PlaceTypeFilter.CITIES:
        return "(cities)";
      case PlaceTypeFilter.ESTABLISHMENT:
        return "establishment";
      case PlaceTypeFilter.GEOCODE:
        return "geocode";
      case PlaceTypeFilter.REGIONS:
        return "(regions)";
    }
  }

  inter.AutocompletePrediction _translatePrediction(
      places.AutocompletePrediction prediction) {
    var main_text = prediction.structuredFormatting?.mainText;
    var secondary_text = prediction.structuredFormatting?.secondaryText;
    return inter.AutocompletePrediction(
      distanceMeters: prediction.distanceMeters?.toInt() ?? 0,
      placeId: prediction.placeId ?? '',
      primaryText: main_text ?? '',
      secondaryText: secondary_text ?? '',
      fullText: '$main_text, $secondary_text',
    );
  }

  @override
  Future<FetchPlaceResponse> fetchPlace(
    String placeId, {
    List<PlaceField>? fields,
    bool? newSessionToken,
  }) async {
    final prom = _getDetails(PlaceDetailsRequest()
      ..placeId = placeId
      ..fields = fields?.map(this._mapField).toList(growable: false)
      ..sessionToken = _lastSessionToken
      ..language = _language);

    final resp = await prom;
    return FetchPlaceResponse(resp.place);
  }

  String _mapField(PlaceField field) {
    switch (field) {
      case PlaceField.Address:
        return 'formatted_address';
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

    final func = (PlaceResult? place, PlacesServiceStatus? status) {
      completer.complete(_GetDetailsResponse(_parsePlace(place), status));
    };

    _svcPlaces!.getDetails(request, func);

    return completer.future;
  }

  inter.Place? _parsePlace(PlaceResult? place) {
    if (place == null) {
      return null;
    }

    return inter.Place(
      address: place.formattedAddress,
      addressComponents: place.addressComponents
          ?.map(_parseAddressComponent)
          .cast<AddressComponent>()
          .toList(growable: false),
      businessStatus:
          _parseBusinessStatus(getProperty(place, 'business_status')),
      attributions: place.htmlAttributions?.cast<String>(),
      latLng: _parseLatLang(place.geometry?.location),
      name: place.name,
      openingHours: _parseOpeningHours(place.openingHours),
      phoneNumber: place.internationalPhoneNumber,
      photoMetadatas: place.photos
          ?.map((photo) => _parsePhotoMetadata(photo))
          .cast<PhotoMetadata>()
          .toList(growable: false),
      plusCode: _parsePlusCode(place.plusCode),
      priceLevel: place.priceLevel?.toInt(),
      rating: place.rating?.toDouble(),
      types: place.types
          ?.map(_parsePlaceType)
          .where((item) => item != null)
          .cast<PlaceType>()
          .toList(growable: false),
      userRatingsTotal: place.userRatingsTotal?.toInt(),
      utcOffsetMinutes: place.utcOffsetMinutes?.toInt(),
      viewport: _parseLatLngBounds(place.geometry?.viewport),
      websiteUri: place.website == null ? null : Uri.parse(place.website!),
    );
  }

  PlaceType? _parsePlaceType(String? placeType) {
    if (placeType == null) {
      return null;
    }

    placeType = placeType.toUpperCase();
    return PlaceType.values.cast<PlaceType?>().firstWhere(
        (element) => element!.value == placeType,
        orElse: () => null);
  }

  AddressComponent? _parseAddressComponent(
      GeocoderAddressComponent? addressComponent) {
    if (addressComponent == null) {
      return null;
    }

    return AddressComponent(
      name: addressComponent.longName ?? '',
      shortName: addressComponent.shortName ?? '',
      types: addressComponent.types
              ?.whereNotNull()
              .map((e) => e.toString())
              .cast<String>()
              .toList(growable: false) ??
          [],
    );
  }

  inter.LatLng? _parseLatLang(core.LatLng? location) {
    if (location == null) {
      return null;
    }

    return inter.LatLng(
      lat: location.lat.toDouble(),
      lng: location.lng.toDouble(),
    );
  }

  PhotoMetadata? _parsePhotoMetadata(PlacePhoto? photo) {
    if (photo == null) {
      return null;
    }

    final htmlAttrs =
        photo.htmlAttributions?.whereNotNull().toList(growable: false) ?? [];
    final photoMetadata = PhotoMetadata(
        photoReference: _getPhotoMetadataReference(photo),
        width: photo.width?.toInt() ?? 0,
        height: photo.height?.toInt() ?? 0,
        attributions: htmlAttrs.length == 1 ? htmlAttrs[0] : '');

    _photosCache[photoMetadata.photoReference] = photo;

    return photoMetadata;
  }

  String _getPhotoMetadataReference(PlacePhoto photo) {
    final num = _runningUid++;
    return "id_${num.toString()}";
  }

  inter.LatLngBounds? _parseLatLngBounds(core.LatLngBounds? viewport) {
    if (viewport == null) {
      return null;
    }

    return inter.LatLngBounds(
        southwest: _parseLatLang(viewport.southWest)!,
        northeast: _parseLatLang(viewport.northEast)!);
  }

  PlusCode? _parsePlusCode(PlacePlusCode? plusCode) {
    if (plusCode == null) {
      return null;
    }

    return PlusCode(
      compoundCode: plusCode.compoundCode ?? '',
      globalCode: plusCode.globalCode ?? '',
    );
  }

  inter.BusinessStatus? _parseBusinessStatus(String? businessStatus) {
    if (businessStatus == null) {
      return null;
    }

    businessStatus = businessStatus.toUpperCase();
    return inter.BusinessStatus.values.firstWhereOrNull(
        (element) => element.name.toUpperCase() == businessStatus);
  }

  OpeningHours? _parseOpeningHours(PlaceOpeningHours? openingHours) {
    if (openingHours == null) {
      return null;
    }

    return OpeningHours(
      periods: openingHours.periods
              ?.whereNotNull()
              .map(_parsePeriod)
              .cast<Period>()
              .toList(growable: false) ??
          [],
      weekdayText: openingHours.weekdayText
              ?.whereNotNull()
              .cast<String>()
              .toList(growable: false) ??
          [],
    );
  }

  Period _parsePeriod(PlaceOpeningHoursPeriod period) {
    return Period(
        open: _parseTimeOfWeek(period.open)!,
        close: _parseTimeOfWeek(period.close));
  }

  TimeOfWeek? _parseTimeOfWeek(PlaceOpeningHoursTime? timeOfWeek) {
    if (timeOfWeek == null || timeOfWeek.day == null) {
      return null;
    }

    final day = timeOfWeek.day?.toInt();
    if (day == null) {
      return null;
    }

    return TimeOfWeek(
      day: _parseDayOfWeek(day),
      time: PlaceLocalTime(
        hours: timeOfWeek.hours?.toInt() ?? 0,
        minutes: timeOfWeek.minutes?.toInt() ?? 0,
      ),
    );
  }

  DayOfWeek _parseDayOfWeek(int day) {
    return DayOfWeek.values[day];
  }

  core.LatLngBounds? _boundsToWeb(inter.LatLngBounds? bounds) {
    if (bounds == null) {
      return null;
    }
    return core.LatLngBounds(
        _latLngToWeb(bounds.southwest), _latLngToWeb(bounds.northeast));
  }

  core.LatLng _latLngToWeb(inter.LatLng latLng) {
    return core.LatLng(latLng.lat, latLng.lng);
  }

  @override
  Future<FetchPlacePhotoResponse> fetchPlacePhoto(
    PhotoMetadata photoMetadata, {
    int? maxWidth,
    int? maxHeight,
  }) async {
    PlacePhoto? value = _photosCache[photoMetadata.photoReference];
    if (value == null) {
      throw PlatformException(
        code: 'API_ERROR_PHOTO',
        message: 'PhotoMetadata must be initially fetched with fetchPlace',
        details: '',
      );
    }

    final options = PhotoOptions()
      ..maxWidth = maxWidth
      ..maxHeight = maxHeight;
    final url = value.getUrl(options);

    return FetchPlacePhotoResponse.imageUrl(url!);
  }
}

/// A Place details response returned from PlacesService
class _GetDetailsResponse {
  /// Construct a new response
  const _GetDetailsResponse(this.place, this.status);

  /// The place of the response.
  final inter.Place? place;

  /// The status of the response.
  final PlacesServiceStatus? status;
}
