import 'package:flutter_google_places_sdk_http/types/details/place_address_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'place_result.freezed.dart';
part 'place_result.g.dart';

/// Place details result from google maps api.
@freezed
class PlaceResult with _$PlaceResult{
  /// Construct a [PlaceResult] object.
  const factory PlaceResult({
    /// A string containing the human-readable address of this place.
    /// Often this address is equivalent to the postal address. 
    /// Note that some countries, such as the United Kingdom, do not allow distribution of true postal addresses due to licensing restrictions.
    /// The formatted address is logically composed of one or more address components. 
    /// For example, the address "111 8th Avenue, New York, NY" consists of the following components: "111" (the street number), "8th Avenue" (the route), "New York" (the city) and "NY" (the US state).
    /// Do not parse the formatted address programmatically. 
    /// Instead you should use the individual address components, which the API response includes in addition to the formatted address field.
    required String? formatted_address,

    /// An array containing the separate components applicable to this address.
    required List<PlaceAddressComponent>? address_components,

    /// Indicates the operational status of the place, if it is a business. 
    /// If no data exists, business_status is not returned.
    required String? business_status,

    /// A textual identifier that uniquely identifies a place.
    required String? place_id,

    /// Contains the location and viewport for the location.
    required Map<String, dynamic>? geometry,

    /// Contains the human-readable name for the returned result. 
    /// For establishment results, this is usually the canonicalized business name.
    required String? name,

    /// Contains the regular hours of operation.
    required Map<String, dynamic>? opening_hours,

    /// Contains the place's phone number in international format. 
    /// International format includes the country code, and is prefixed with the plus, +, sign. 
    /// For example, the international_phone_number for Google's Sydney, Australia office is +61 2 9374 4000.
    required String? international_phone_number,

    /// An array of photo objects, each containing a reference to an image. A request may return up to ten photos.
    required List<dynamic>? photos,

    /// An encoded location reference, derived from latitude and longitude coordinates, that represents an area: 1/8000th of a degree by 1/8000th of a degree (about 14m x 14m at the equator) or smaller. 
    /// Plus codes can be used as a replacement for street addresses in places where they do not exist (where buildings are not numbered or streets are not named). 
    required Map<String, dynamic>? plus_code,

    /// The price level of the place, on a scale of 0 to 4. The exact amount indicated by a specific value will vary from region to region. Price levels are interpreted as follows:
    /// 0 Free
    /// 1 Inexpensive
    /// 2 Moderate
    /// 3 Expensive
    /// 4 Very Expensive
    required int? price_level,

    /// Contains the place's rating, from 1.0 to 5.0, based on aggregated user reviews.
    required double? rating,

    /// Contains an array of feature types describing the given result.
    required List<String>? types,

    /// The total number of reviews, with or without text, for this place.
    required int? user_ratings_total,

    /// Contains the number of minutes this place’s current timezone is offset from UTC. 
    /// For example, for places in Sydney, Australia during daylight saving time this would be 660 (+11 hours from UTC), and for places in California outside of daylight saving time this would be -480 (-8 hours from UTC).
    required int? utc_offset,

    /// The authoritative website for this place, such as a business' homepage.
    required Uri? website, 
  }) = _PlaceResult;

  /// Parse a [PlaceResult] from json data.
  factory PlaceResult.fromJson(Map<String, dynamic> json) => _$PlaceResultFromJson(json);
}

