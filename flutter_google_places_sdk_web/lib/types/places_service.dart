@JS('google.maps.places')
library places;

import 'dart:html';

import 'package:flutter_google_places_sdk_web/types/place_details_request.dart';
import 'package:js/js.dart';

/// Callback used in PlacesService.getDetails method
typedef void GetDetailsCallback(PlaceWebResult? result, String status);

/// Defines information about a Place.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlaceResult
@JS()
@anonymous
class PlaceWebResult {
  /// The representation of the Place’s address in the adr microformat. Only available with
  external String? get adr_address;

  /// The collection of address components for this Place’s location
  external List<PlaceWebAddressComponent>? get address_components;

  /// A flag indicating the operational status of the Place, if it is a business
  /// (indicates whether the place is operational, or closed either temporarily or permanently).
  /// If no data is available, the flag is not present in search or details responses.
  external String? get business_status;

  /// Attribution text to be displayed for this Place result.
  /// Available html_attributions are always returned regardless
  /// of what fields have been requested, and must be displayed.
  external List<dynamic>? get html_attributions;

  /// The Place’s geometry-related information.
  external PlaceWebGeometry? get geometry;

  /// The Place’s name.
  /// Note: In the case of user entered Places, this is the raw text, as typed by the user.
  /// Please exercise caution when using this data, as malicious users may try
  /// to use it as a vector for code injection attacks (See http://en.wikipedia.org/wiki/Code_injection).
  external String? get name;

  /// Defines when the Place opens or closes.
  external PlaceWebOpeningHours? get opening_hours;

  /// The Place’s phone number in international format.
  /// International format includes the country code, and is prefixed with the plus (+) sign.
  external String? get international_phone_number;

  /// Photos of this Place. The collection will contain up to ten PlacePhoto objects.
  external List<PlaceWebPhoto>? get photos;

  /// Defines Open Location Codes or "plus codes" for the Place.
  external PlaceWebPlusCode? get plus_code;

  /// The price level of the Place, on a scale of 0 to 4. Price levels are interpreted as follows:
  /// 0: Free
  /// 1: Inexpensive
  /// 2: Moderate
  /// 3: Expensive
  /// 4: Very Expensive
  external int? get price_level;

  /// A rating, between 1.0 to 5.0, based on user reviews of this Place.
  external double? get rating;

  /// An array of types for this Place.
  /// For example, ["political", "locality"] or ["restaurant", "establishment"].
  external List<String?>? get types;

  /// The number of user ratings which contributed to this Place’s PlaceResult.rating.
  external int? get user_ratings_total;

  /// he offset from UTC of the Place’s current timezone, in minutes.
  ///
  /// For example, Sydney, Australia in daylight savings is 11 hours ahead of UTC,
  /// so the utc_offset_minutes will be 660.
  ///
  /// For timezones behind UTC, the offset is negative.
  /// For example, the utc_offset_minutes is -60 for Cape Verde.
  external int? get utc_offset_minutes;

  /// The authoritative website for this Place, such as a business' homepage.
  external String? get website;
}

/// Defines Open Location Codes or "plus codes" for a Place.
/// Plus codes can be used as a replacement for street addresses in places
/// where they do not exist (where buildings are not numbered or streets are not named).
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlacePlusCode
@JS()
@anonymous
class PlaceWebPlusCode {
  /// A plus code with a 1/8000th of a degree by 1/8000th of a degree area where
  /// the first four characters (the area code) are dropped and replaced with a locality description.
  ///
  /// For example, "9G8F+5W Zurich, Switzerland".
  /// If no suitable locality that can be found to shorten the code then this field is omitted.
  external String compound_code;

  /// A plus code with a 1/8000th of a degree by 1/8000th of a degree area.
  /// For example, "8FVC9G8F+5W".
  external String global_code;
}

/// Represents a photo element of a Place.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlacePhoto
@JS()
@anonymous
class PlaceWebPhoto {
  /// Attribution text to be displayed for this photo.
  external List<dynamic>? get html_attributions;

  /// The width of the photo in pixels.
  external int width;

  /// The height of the photo in pixels.
  external int height;

  /// Returns the image URL corresponding to the specified options.
  external String getUrl(PhotoWebOptions? photoWebOptions);
}

///Defines photo-requesting options.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PhotoOptions
@JS()
@anonymous
class PhotoWebOptions {
  /// Create a PhotoWebOptions
  external factory PhotoWebOptions({int? maxWidth, int? maxHeight});

  /// The maximum width in pixels of the returned image.
  external int? maxWidth;

  /// The maximum height in pixels of the returned image.
  external int? maxHeight;
}

/// Defines information about the opening hours of a Place.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlaceOpeningHours
@JS()
@anonymous
class PlaceWebOpeningHours {
  /// Opening periods covering for each day of the week, starting from Sunday, in chronological order.
  /// Days in which the Place is not open are not included
  external List<PlaceWebPeriod> get periods;

  /// An array of seven strings representing the formatted opening hours for each day of the week.
  /// The Places Service will format and localize the opening hours appropriately for the current language.
  /// The ordering of the elements in this array depends on the language.
  /// Some languages start the week on Monday while others start on Sunday.
  external List<dynamic> get weekday_text;
}

/// Defines structured information about the opening hours of a Place.
///
/// Note: If a Place is always open, the close section will be missing from the response.
/// Clients can rely on always-open being represented as an open period
/// containing day with value 0 and time with value "0000", and no close.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlaceOpeningHoursPeriod
@JS()
@anonymous
class PlaceWebPeriod {
  /// The opening time for the Place.
  external PlaceWebTimeOfWeek? get open;

  /// The closing time for the Place.
  external PlaceWebTimeOfWeek? get close;
}

/// Defines when a Place opens or closes.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlaceOpeningHoursTime
@JS()
@anonymous
class PlaceWebTimeOfWeek {
  /// The days of the week, as a number in the range [0, 6], starting on Sunday.
  /// For example, 2 means Tuesday.
  external int get day;

  /// The hours of the PlaceOpeningHoursTime.time as a number, in the range [0, 23].
  /// This will be reported in the Place’s time zone.
  external int get hours;

  /// The minutes of the PlaceOpeningHoursTime.time as a number, in the range [0, 59].
  /// This will be reported in the Place’s time zone.
  external int get minutes;
}

/// Defines information about the geometry of a Place.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlaceGeometry
@JS()
@anonymous
class PlaceWebGeometry {
  /// The Place’s position.
  external PlaceWebLatLng get location;

  /// The preferred viewport when displaying this Place on a map.
  /// This property will be null if the preferred viewport for the Place is not known
  external PlaceWebViewport get viewport;
}

/// A LatLngBounds instance represents a rectangle in geographical coordinates,
/// including one that crosses the 180 degrees longitudinal meridian.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/coordinates#LatLngBounds
@JS()
@anonymous
class PlaceWebViewport {
  /// Returns the south-west corner of this bounds.
  external PlaceWebLatLng getSouthWest();

  /// Returns the north-east corner of this bounds.
  external PlaceWebLatLng getNorthEast();
}

/// A LatLng is a point in geographical coordinates: latitude and longitude.
///
/// Latitude ranges between -90 and 90 degrees, inclusive.
/// Values above or below this range will be clamped to the range [-90, 90].
/// This means that if the value specified is less than -90, it will be set to -90.
/// And if the value is greater than 90, it will be set to 90.
///
/// Longitude ranges between -180 and 180 degrees, inclusive.
/// Values above or below this range will be wrapped so that they fall within the range.
/// For example, a value of -190 will be converted to 170. A value of 190 will be converted to -170.
/// This reflects the fact that longitudes wrap around the globe.
///
/// Although the default map projection associates longitude with the x-coordinate of the map,
/// and latitude with the y-coordinate, the latitude coordinate is always
/// written first, followed by the longitude.
///
/// Notice that you cannot modify the coordinates of a LatLng.
/// If you want to compute another point, you have to create a new one.
@JS()
@anonymous
class PlaceWebLatLng {
  /// Returns the latitude in degrees.
  external double lat();

  /// Returns the longitude in degrees.
  external double lng();
}

/// A single address component within a GeocoderResult.
/// A full address may consist of multiple address components.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/geocoder#GeocoderAddressComponent
@JS()
@anonymous
class PlaceWebAddressComponent {
  /// The full text of the address component
  external String get long_name;

  /// The abbreviated, short text of the given address component
  external String get short_name;

  /// An array of strings denoting the type of this address component.
  /// A list of valid types can be found [here](https://developers.google.com/maps/documentation/javascript/geocoding#GeocodingAddressTypes)
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
