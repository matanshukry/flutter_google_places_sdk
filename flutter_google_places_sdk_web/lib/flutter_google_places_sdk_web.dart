@JS()
library places;

import 'dart:async';
import 'dart:developer';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart'
    as inter;
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_google_places_sdk_web/extension.dart' as ext;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_maps/google_maps.dart' as core;
import 'package:google_maps/google_maps_places.dart' as places;
import 'package:google_maps/google_maps_places.dart';
import 'package:web/web.dart' as html;

@JS('initMap')
external set _initMap(JSFunction f);

/// Web implementation plugin for flutter google places sdk
class FlutterGooglePlacesSdkWebPlugin extends FlutterGooglePlacesSdkPlatform {
  /// Register the plugin with the web implementation.
  /// Called by ?? when ??
  static void registerWith(Registrar registrar) {
    FlutterGooglePlacesSdkPlatform.instance = FlutterGooglePlacesSdkWebPlugin();
  }

  static const _SCRIPT_ID = 'flutter_google_places_sdk_web_script_id';

  Completer? _completer;

  bool _elementInjected = false;
  AutocompleteSessionToken? _lastSessionToken;

  // Language
  String? _language;

  // Cache for photos
  final _photosCache = <String, places.Photo>{};
  var _runningUid = 1;

  @override
  Future<void> deinitialize() async {
    // Nothing to do; there is no de-initialize for web
  }

  @override
  Future<void> initialize(
    String apiKey, {
    Locale? locale,
    bool? useNewApi,
  }) async {
    if (_elementInjected) {
      return;
    }

    final completer = Completer();
    _completer = completer;

    _initMap = _doInit.toJS;

    html.Element? scriptExist = html.window.document.querySelector(
      '#$_SCRIPT_ID',
    );
    if (scriptExist != null) {
      _doInit();
    } else {
      final body = html.window.document.querySelector('body')!;
      var src =
          'https://maps.googleapis.com/maps/api/js?key=${apiKey}&loading=async&libraries=places&callback=initMap';
      if (locale?.languageCode != null) {
        _language = locale?.languageCode;
      }
      body.append(
        html.HTMLScriptElement()
          ..id = _SCRIPT_ID
          ..src = src
          ..async = true
          ..type = 'application/javascript',
      );
    }

    return completer.future.then((_) {});
  }

  @override
  Future<void> updateSettings(
    String apiKey, {
    Locale? locale,
    bool? useNewApi,
  }) async {
    if (locale != null) {
      _language = locale.languageCode;
    }
  }

  void _doInit() {
    _elementInjected = true;
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
    List<String> placeTypesFilter = const [],
    bool? newSessionToken,
    inter.LatLng? origin,
    inter.LatLngBounds? locationBias,
    inter.LatLngBounds? locationRestriction,
  }) async {
    await _completer;
    if (locationRestriction != null) {
      // https://issuetracker.google.com/issues/36219203
      log(
        "locationRestriction is not supported: https://issuetracker.google.com/issues/36219203",
      );
    }
    final prom =
        AutocompleteSuggestion.fetchAutocompleteSuggestions(
              AutocompleteRequest()
                ..sessionToken = _lastSessionToken
                ..input = query
                ..origin = origin == null
                    ? null
                    : core.LatLng(origin.lat, origin.lng)
                ..includedPrimaryTypes = placeTypesFilter.isEmpty
                    ? null
                    : placeTypesFilter
                ..includedRegionCodes = countries
                ..locationRestriction = _boundsToWeb(locationBias)
                ..language = _language,
            )
            as JSPromise<JSObject>?;
    final result = await prom?.toDart;
    final response = result as ext.AutocompleteResponse?;
    final resp = response?.suggestions.toDart ?? [];

    final predictions = resp
        .map(_translatePrediction)
        .nonNulls
        .toList(growable: false);
    return FindAutocompletePredictionsResponse(predictions);
  }

  inter.AutocompletePrediction? _translatePrediction(
    AutocompleteSuggestion? suggestion,
  ) {
    final prediction = suggestion?.placePrediction;
    if (prediction == null) {
      return null;
    }
    var main_text = prediction.mainText?.text ?? '';
    var secondary_text = prediction.secondaryText?.text ?? '';
    return inter.AutocompletePrediction(
      distanceMeters: prediction.distanceMeters?.toInt() ?? 0,
      placeId: prediction.placeId,
      primaryText: main_text,
      secondaryText: secondary_text,
      fullText: '$main_text, $secondary_text',
    );
  }

  @override
  Future<FetchPlaceResponse> fetchPlace(
    String placeId, {
    required List<PlaceField> fields,
    bool? newSessionToken,
    String? regionCode,
  }) async {
    final respPlace = await _getDetails(placeId, fields);
    return FetchPlaceResponse(respPlace);
  }

  PlaceField? _mapToNew(PlaceField field) => switch (field) {
    // PlaceField.OpeningHours => PlaceField.CurrentOpeningHours,
    _ => field.v2,
  };

  String? _mapField(PlaceField field) {
    final mapped = _mapToNew(field);
    if (mapped == null) {
      return null;
    }
    final name = mapped.name;
    final first = name[0].toLowerCase();
    final rest = name.substring(1);
    return first + rest;
  }

  Future<inter.Place?> _getDetails(
    String placeId,
    List<inter.PlaceField> fields,
  ) async {
    final fieldsMapped = fields
        .map(this._mapField)
        .nonNulls
        .map((str) => str.toJS)
        .toList(growable: false)
        .toJS;

    final place = new places.Place(
      PlaceOptions(id: placeId, requestedLanguage: _language),
    );
    final task =
        place.fetchFields(FetchFieldsRequest(fields: fieldsMapped))
            as JSPromise<JSObject>?;
    // /*UNPARSED:Promise<{place:Place}>*/
    final result = await task?.toDart;
    final response = result as ext.FetchFieldsResponse?;
    final resultPlace = response?.place; // PlaceResult? Place?
    return _parsePlace(resultPlace);
  }

  inter.Place? _parsePlace(places.Place? place) {
    if (place == null) {
      return null;
    }

    return inter.Place(
      id: place.id,
      address: place.formattedAddress,
      addressComponents: place.addressComponents
          ?.map(_parseAddressComponent)
          .cast<inter.AddressComponent>()
          .toList(growable: false),
      businessStatus: _parseBusinessStatus(
        place.getProperty('business_status'.toJS) as String?,
      ),
      attributions: place.attributions?.cast<String>(),
      latLng: _parseLatLang(place.location),
      name: place.displayName,
      nameLanguageCode: null,
      openingHours: _parseOpeningHours(place.openingHours),
      phoneNumber: place.internationalPhoneNumber,
      photoMetadatas: place.photos
          ?.map((photo) => _parsePhotoMetadata(photo))
          .cast<PhotoMetadata>()
          .toList(growable: false),
      plusCode: _parsePlusCode(place.plusCode),
      priceLevel: place.priceLevel?.toLevelNumber,
      rating: place.rating?.toDouble(),
      types: place.types
          ?.map(_parsePlaceType)
          .where((item) => item != null)
          .cast<PlaceType>()
          .toList(growable: false),
      userRatingsTotal: place.userRatingCount?.toInt(),
      utcOffsetMinutes: place.utcOffsetMinutes?.toInt(),
      viewport: _parseLatLngBounds(place.viewport),
      websiteUri: place.websiteURI == null
          ? null
          : Uri.parse(place.websiteURI!),
      reviews: null,
    );
  }

  PlaceType? _parsePlaceType(String? placeType) {
    if (placeType == null) {
      return null;
    }

    placeType = placeType.toUpperCase();
    return PlaceType.values.cast<PlaceType?>().firstWhere(
      (element) => element!.value == placeType,
      orElse: () => null,
    );
  }

  inter.AddressComponent _parseAddressComponent(
    places.AddressComponent addressComponent,
  ) {
    return inter.AddressComponent(
      name: addressComponent.longText ?? '',
      shortName: addressComponent.shortText ?? '',
      types: addressComponent.types
          .map((e) => e.toString())
          .cast<String>()
          .toList(growable: false),
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

  PhotoMetadata? _parsePhotoMetadata(places.Photo? photo) {
    if (photo == null) {
      return null;
    }

    final attrs = photo.authorAttributions
        .map((attr) => attr.uri)
        .nonNulls
        .toList(growable: false);
    final photoMetadata = PhotoMetadata(
      photoReference: _getPhotoMetadataReference(),
      width: photo.widthPx.toInt(),
      height: photo.heightPx.toInt(),
      attributions: attrs.length == 1 ? attrs[0] : '',
    );

    _photosCache[photoMetadata.photoReference] = photo;

    return photoMetadata;
  }

  String _getPhotoMetadataReference() {
    final num = _runningUid++;
    return "id_${num.toString()}";
  }

  inter.LatLngBounds? _parseLatLngBounds(core.LatLngBounds? viewport) {
    if (viewport == null) {
      return null;
    }

    return inter.LatLngBounds(
      southwest: _parseLatLang(viewport.southWest)!,
      northeast: _parseLatLang(viewport.northEast)!,
    );
  }

  inter.PlusCode? _parsePlusCode(places.PlusCode? plusCode) {
    if (plusCode == null) {
      return null;
    }

    return inter.PlusCode(
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
      (element) => element.name.toUpperCase() == businessStatus,
    );
  }

  inter.OpeningHours? _parseOpeningHours(places.OpeningHours? openingHours) {
    if (openingHours == null) {
      return null;
    }

    return inter.OpeningHours(
      periods: openingHours.periods
          .map(_parsePeriod)
          .cast<Period>()
          .toList(growable: false),
      weekdayText: openingHours.weekdayDescriptions.cast<String>().toList(
        growable: false,
      ),
    );
  }

  Period _parsePeriod(places.OpeningHoursPeriod period) {
    return Period(
      open: _parseTimeOfWeek(period.open)!,
      close: _parseTimeOfWeek(period.close),
    );
  }

  TimeOfWeek? _parseTimeOfWeek(places.OpeningHoursPoint? timeOfWeek) {
    if (timeOfWeek == null) {
      return null;
    }

    final day = timeOfWeek.day.toInt();

    return TimeOfWeek(
      day: _parseDayOfWeek(day),
      time: PlaceLocalTime(
        hours: timeOfWeek.hour.toInt(),
        minutes: timeOfWeek.minute.toInt(),
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
      _latLngToWeb(bounds.southwest),
      _latLngToWeb(bounds.northeast),
    );
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
    places.Photo? value = _photosCache[photoMetadata.photoReference];
    if (value == null) {
      throw PlatformException(
        code: 'API_ERROR_PHOTO',
        message: 'PhotoMetadata must be initially fetched with fetchPlace',
        details: '',
      );
    }

    final url = value.uRI;

    return FetchPlacePhotoResponse.imageUrl(url);
  }
}

extension _PriceLevelExtension on PriceLevel {
  int? get toLevelNumber {
    if (PriceLevel.FREE == this) {
      return 0;
    }
    if (PriceLevel.INEXPENSIVE == this) {
      return 1;
    }
    if (PriceLevel.MODERATE == this) {
      return 2;
    }
    if (PriceLevel.EXPENSIVE == this) {
      return 3;
    }
    if (PriceLevel.VERY_EXPENSIVE == this) {
      return 4;
    }
    return null;
  }
}
