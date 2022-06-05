import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart'
    as inter;
import 'package:flutter_google_places_sdk_windows/types/places_autocomplete_response.dart';
import 'package:flutter_google_places_sdk_windows/types/places_autocomplete_status.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart' as latlnglib;

final _kLogPrefix = 'flutter_google_place_sdk_windows_plugin :: WARN -';

/// Web implementation plugin for flutter google places sdk
class FlutterGooglePlacesSdkWindowsPlugin
    extends inter.FlutterGooglePlacesSdkPlatform {
  /// Registers this class as the default instance of [FlutterGooglePlacesSdkPlatform].
  static void registerWith() {
    inter.FlutterGooglePlacesSdkPlatform.instance =
        FlutterGooglePlacesSdkWindowsPlugin();
  }

  static const _kAPI_HOST = 'https://maps.googleapis.com';

  static const _kAPI_PLACES = '${_kAPI_HOST}/maps/api/place';

  String? _apiKey;
  Locale? _locale;

  // AutocompleteService? _svcAutoComplete;
  // PlacesService? _svcPlaces;
  String? _lastSessionToken;

  // Cache for photos
  // final _photosCache = <String, PlacePhoto>{};
  // var _runningUid = 1;

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

    // await _completer;
    // final typeFilterStr = _placeTypeToStr(placeTypeFilter);
    // if (locationRestriction != null) {
    //   // https://issuetracker.google.com/issues/36219203
    //   log("locationRestriction is not supported: https://issuetracker.google.com/issues/36219203");
    // }
    // final prom = _svcAutoComplete!.getPlacePredictions(AutocompletionRequest()
    //   ..input = query
    //   ..types = typeFilterStr == null ? null : [typeFilterStr]
    //   ..componentRestrictions = (ComponentRestrictions()..country = countries)
    //   ..bounds = _boundsToWeb(locationBias));
    // final resp = await prom;
    //
    // final predictions = resp.predictions
    //         ?.whereNotNull()
    //         .map(_translatePrediction)
    //         .toList(growable: false) ??
    //     [];
    // return FindAutocompletePredictionsResponse(predictions);
  }

  // String? _placeTypeToStr(PlaceTypeFilter placeTypeFilter) {
  //   switch (placeTypeFilter) {
  //     case PlaceTypeFilter.ADDRESS:
  //       return "address";
  //     case PlaceTypeFilter.CITIES:
  //       return "(cities)";
  //     case PlaceTypeFilter.ESTABLISHMENT:
  //       return "establishment";
  //     case PlaceTypeFilter.GEOCODE:
  //       return "geocode";
  //     case PlaceTypeFilter.REGIONS:
  //       return "(regions)";
  //     case PlaceTypeFilter.ALL:
  //       return null;
  //   }
  // }

  // inter.AutocompletePrediction _translatePrediction(
  //     places.AutocompletePrediction prediction) {
  //   var main_text = prediction.structuredFormatting?.mainText;
  //   var secondary_text = prediction.structuredFormatting?.secondaryText;
  //   return inter.AutocompletePrediction(
  //     distanceMeters: prediction.distanceMeters?.toInt() ?? 0,
  //     placeId: prediction.placeId ?? '',
  //     primaryText: main_text ?? '',
  //     secondaryText: secondary_text ?? '',
  //     fullText: '$main_text, $secondary_text',
  //   );
  // }

  @override
  Future<inter.FetchPlaceResponse> fetchPlace(
    String placeId, {
    List<inter.PlaceField>? fields,
    bool? newSessionToken,
  }) async {
    throw UnimplementedError();
    // final prom = _getDetails(PlaceDetailsRequest()
    //   ..placeId = placeId
    //   ..fields = fields?.map(this._mapField).toList(growable: false)
    //   ..sessionToken = _lastSessionToken);
    //
    // final resp = await prom;
    // return FetchPlaceResponse(resp.place);
  }

  // String _mapField(PlaceField field) {
  //   switch (field) {
  //     case PlaceField.Address:
  //       return 'adr_address';
  //     case PlaceField.AddressComponents:
  //       return 'address_components';
  //     case PlaceField.BusinessStatus:
  //       return 'business_status';
  //     case PlaceField.Id:
  //       return 'place_id';
  //     case PlaceField.Location:
  //       return 'geometry.location';
  //     case PlaceField.Name:
  //       return 'name';
  //     case PlaceField.OpeningHours:
  //       return 'opening_hours';
  //     case PlaceField.PhoneNumber:
  //       return 'international_phone_number';
  //     case PlaceField.PhotoMetadatas:
  //       return 'photos';
  //     case PlaceField.PlusCode:
  //       return 'plus_code';
  //     case PlaceField.PriceLevel:
  //       return 'price_level';
  //     case PlaceField.Rating:
  //       return 'rating'; // not done yet
  //     case PlaceField.Types:
  //       return 'types';
  //     case PlaceField.UserRatingsTotal:
  //       return 'user_ratings_total';
  //     case PlaceField.UTCOffset:
  //       return 'utc_offset_minutes';
  //     case PlaceField.Viewport:
  //       return 'geometry.viewport';
  //     case PlaceField.WebsiteUri:
  //       return 'website';
  //     default:
  //       throw ArgumentError('Unsupported place field: $this');
  //   }
  // }

  // Future<_GetDetailsResponse> _getDetails(PlaceDetailsRequest request) {
  //   final completer = Completer<_GetDetailsResponse>();
  //
  //   final func = (PlaceResult? place, PlacesServiceStatus? status) {
  //     completer.complete(_GetDetailsResponse(_parsePlace(place), status));
  //   };
  //
  //   _svcPlaces!.getDetails(request, func);
  //
  //   return completer.future;
  // }

  // inter.Place? _parsePlace(PlaceResult? place) {
  //   if (place == null) {
  //     return null;
  //   }
  //
  //   return inter.Place(
  //     address: place.adrAddress,
  //     addressComponents: place.addressComponents
  //         ?.map(_parseAddressComponent)
  //         .cast<AddressComponent>()
  //         .toList(growable: false),
  //     businessStatus: _parseBusinessStatus(place.businessStatus),
  //     attributions: place.htmlAttributions?.cast<String>(),
  //     latLng: _parseLatLang(place.geometry?.location),
  //     name: place.name,
  //     openingHours: _parseOpeningHours(place.openingHours),
  //     phoneNumber: place.internationalPhoneNumber,
  //     photoMetadatas: place.photos
  //         ?.map((photo) => _parsePhotoMetadata(photo))
  //         .cast<PhotoMetadata>()
  //         .toList(growable: false),
  //     plusCode: _parsePlusCode(place.plusCode),
  //     priceLevel: place.priceLevel?.toInt(),
  //     rating: place.rating?.toDouble(),
  //     types: place.types
  //         ?.map(_parsePlaceType)
  //         .where((item) => item != null)
  //         .cast<PlaceType>()
  //         .toList(growable: false),
  //     userRatingsTotal: place.userRatingsTotal?.toInt(),
  //     utcOffsetMinutes: place.utcOffsetMinutes?.toInt(),
  //     viewport: _parseLatLngBounds(place.geometry?.viewport),
  //     websiteUri: place.website == null ? null : Uri.parse(place.website!),
  //   );
  // }

  // PlaceType? _parsePlaceType(String? placeType) {
  //   if (placeType == null) {
  //     return null;
  //   }
  //
  //   placeType = placeType.toUpperCase();
  //   return PlaceType.values.cast<PlaceType?>().firstWhere(
  //       (element) => element!.value == placeType,
  //       orElse: () => null);
  // }

  // AddressComponent? _parseAddressComponent(
  //     GeocoderAddressComponent? addressComponent) {
  //   if (addressComponent == null) {
  //     return null;
  //   }
  //
  //   return AddressComponent(
  //     name: addressComponent.longName ?? '',
  //     shortName: addressComponent.shortName ?? '',
  //     types: addressComponent.types
  //             ?.whereNotNull()
  //             .map((e) => e.toString())
  //             .cast<String>()
  //             .toList(growable: false) ??
  //         [],
  //   );
  // }

  // inter.LatLng? _parseLatLang(core.LatLng? location) {
  //   if (location == null) {
  //     return null;
  //   }
  //
  //   return inter.LatLng(
  //     lat: location.lat.toDouble(),
  //     lng: location.lng.toDouble(),
  //   );
  // }
  //
  // PhotoMetadata? _parsePhotoMetadata(PlacePhoto? photo) {
  //   if (photo == null) {
  //     return null;
  //   }
  //
  //   final htmlAttrs =
  //       photo.htmlAttributions?.whereNotNull().toList(growable: false) ?? [];
  //   final photoMetadata = PhotoMetadata(
  //       photoReference: _getPhotoMetadataReference(photo),
  //       width: photo.width?.toInt() ?? 0,
  //       height: photo.height?.toInt() ?? 0,
  //       attributions: htmlAttrs.length == 1 ? htmlAttrs[0] : '');
  //
  //   _photosCache[photoMetadata.photoReference] = photo;
  //
  //   return photoMetadata;
  // }

  // String _getPhotoMetadataReference(PlacePhoto photo) {
  //   final num = _runningUid++;
  //   return "id_${num.toString()}";
  // }
  //
  // inter.LatLngBounds? _parseLatLngBounds(core.LatLngBounds? viewport) {
  //   if (viewport == null) {
  //     return null;
  //   }
  //
  //   return inter.LatLngBounds(
  //       southwest: _parseLatLang(viewport.southWest)!,
  //       northeast: _parseLatLang(viewport.northEast)!);
  // }
  //
  // PlusCode? _parsePlusCode(PlacePlusCode? plusCode) {
  //   if (plusCode == null) {
  //     return null;
  //   }
  //
  //   return PlusCode(
  //     compoundCode: plusCode.compoundCode ?? '',
  //     globalCode: plusCode.globalCode ?? '',
  //   );
  // }

  // inter.BusinessStatus? _parseBusinessStatus(
  //     places.BusinessStatus? businessStatus) {
  //   if (businessStatus == null) {
  //     return null;
  //   }
  //
  //   return businessStatus.toString().toBusinessStatus();
  // }
  //
  // OpeningHours? _parseOpeningHours(PlaceOpeningHours? openingHours) {
  //   if (openingHours == null) {
  //     return null;
  //   }
  //
  //   return OpeningHours(
  //     periods: openingHours.periods
  //             ?.whereNotNull()
  //             .map(_parsePeriod)
  //             .cast<Period>()
  //             .toList(growable: false) ??
  //         [],
  //     weekdayText: openingHours.weekdayText
  //             ?.whereNotNull()
  //             .cast<String>()
  //             .toList(growable: false) ??
  //         [],
  //   );
  // }
  //
  // Period _parsePeriod(PlaceOpeningHoursPeriod period) {
  //   return Period(
  //       open: _parseTimeOfWeek(period.open),
  //       close: _parseTimeOfWeek(period.close));
  // }
  //
  // TimeOfWeek? _parseTimeOfWeek(PlaceOpeningHoursTime? timeOfWeek) {
  //   if (timeOfWeek == null || timeOfWeek.day == null) {
  //     return null;
  //   }
  //
  //   final day = timeOfWeek.day?.toInt();
  //   if (day == null) {
  //     return null;
  //   }
  //
  //   return TimeOfWeek(
  //     day: _parseDayOfWeek(day),
  //     time: PlaceLocalTime(
  //       hours: timeOfWeek.hours?.toInt() ?? 0,
  //       minutes: timeOfWeek.minutes?.toInt() ?? 0,
  //     ),
  //   );
  // }

  // DayOfWeek _parseDayOfWeek(int day) {
  //   return DayOfWeek.values[day];
  // }
  //
  // core.LatLngBounds? _boundsToWeb(inter.LatLngBounds? bounds) {
  //   if (bounds == null) {
  //     return null;
  //   }
  //   return core.LatLngBounds(
  //       _latLngToWeb(bounds.southwest), _latLngToWeb(bounds.northeast));
  // }
  //
  // core.LatLng _latLngToWeb(inter.LatLng latLng) {
  //   return core.LatLng(latLng.lat, latLng.lng);
  // }

  @override
  Future<inter.FetchPlacePhotoResponse> fetchPlacePhoto(
    inter.PhotoMetadata photoMetadata, {
    int? maxWidth,
    int? maxHeight,
  }) async {
    throw UnimplementedError();
    // final value = _photosCache[photoMetadata.photoReference];
    // if (value == null) {
    //   throw PlatformException(
    //     code: 'API_ERROR_PHOTO',
    //     message: 'PhotoMetadata must be initially fetched with fetchPlace',
    //     details: '',
    //   );
    // }
    //
    // final options = PhotoOptions()
    //   ..maxWidth = maxWidth
    //   ..maxHeight = maxHeight;
    // final url = value.getUrl(options);
    //
    // return FetchPlacePhotoResponse.imageUrl(url);
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

///// A Place details response returned from PlacesService
// class _GetDetailsResponse {
//   /// Construct a new response
//   const _GetDetailsResponse(this.place, this.status);
//
//   /// The place of the response.
//   final inter.Place? place;
//
//   /// The status of the response.
//   final PlacesServiceStatus? status;
// }
