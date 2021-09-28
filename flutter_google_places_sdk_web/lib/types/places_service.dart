@JS('google.maps.places')
library places;

import 'dart:html';

import 'package:flutter_google_places_sdk_web/types/place_details_request.dart';
import 'package:js/js.dart';

/// Callback used in PlacesService.getDetails method
typedef void GetDetailsCallback(PlaceWebResult? result, String status);

@JS()
@anonymous
class PlaceWebResult {
  external String? get adr_address;

  external List<PlaceWebAddressComponent>? get address_components;

  external String? get business_status;

  external List<dynamic>? get html_attributions;

  external PlaceWebGeometry? get geometry;

  external String? get name;

  external PlaceWebOpeningHours? get opening_hours;

  external String? get international_phone_number;

  external List<PlaceWebPhoto>? get photos;

  external PlaceWebPlusCode? get plus_code;

  external int? get price_level;

  external double? get rating;

  external List<String?>? get types;

  external int? get user_ratings_total;

  external int? get utc_offset_minutes;

  external String? get website;
}

@JS()
@anonymous
class PlaceWebPlusCode {
  external String compound_code;
  external String global_code;
}

@JS()
@anonymous
class PlaceWebPhoto {
  external List<dynamic>? get html_attributions;

  external int width;
  external int height;
}

@JS()
@anonymous
class PlaceWebOpeningHours {
  external List<PlaceWebPeriod> get periods;

  external List<dynamic> get weekday_text;
}

@JS()
@anonymous
class PlaceWebPeriod {
  external PlaceWebTimeOfWeek? get open;

  external PlaceWebTimeOfWeek? get close;
}

@JS()
@anonymous
class PlaceWebTimeOfWeek {
  external int get day;

  external int get hours;

  external int get minutes;
}

@JS()
@anonymous
class PlaceWebGeometry {
  external PlaceWebLatLng get location;

  external PlaceWebViewport get viewport;
}

@JS()
@anonymous
class PlaceWebViewport {
  external PlaceWebLatLng getSouthWest();

  external PlaceWebLatLng getNorthEast();
}

@JS()
@anonymous
class PlaceWebLatLng {
  external double lat();

  external double lng();
}

@JS()
@anonymous
class PlaceWebAddressComponent {
  external String get long_name;

  external String get short_name;

  external List<dynamic> get types;
}

/// Contains methods related to searching for places and retrieving details about a place.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlacesService
@JS()
class PlacesService {
  /// Creates a new instance of the PlacesService.
  external PlacesService(Element element);

  /// Retrieves details about the place identified by the given placeId.
  /// callback:  function(PlaceResult optional, PlacesServiceStatus): void
  external void getDetails(
      PlaceDetailsRequest request, GetDetailsCallback? callback);
}
