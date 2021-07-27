@JS('google.maps.places')
library places;

import 'package:js/js.dart';

/// Defines information about a Place.
// @JS()
// @anonymous
// class PlaceResult {
//   /// The collection of address components for this Place’s location. Only available with PlacesService.getDetails.
//   external List<GeocoderAddressComponent>? address_components;
//
//   /// The representation of the Place’s address in the adr microformat. Only available with PlacesService.getDetails.
//   external String? adr_address;
//
//   /// The rated aspects of this Place, based on Google and Zagat user reviews. The ratings are on a scale of 0 to 30.
//   external List<PlaceAspectRating>? aspects;
//
//   /// A flag indicating the operational status of the Place, if it is a business (indicates whether the place is operational, or closed either temporarily or permanently). If no data is available, the flag is not present in search or details responses.
//   external BusinessStatus? business_status;
//
//   /// The Place’s full address.
//   external String? formatted_address;
//
//   /// The Place’s phone number, formatted according to the number's regional convention. Only available with PlacesService.getDetails.
//   external String? formatted_phone_number;
//
//   /// The Place’s geometry-related information.
//   external PlaceGeometry? geometry;
//
//   /// Attribution text to be displayed for this Place result. Available html_attributions are always returned regardless of what fields have been requested, and must be displayed.
//   external List<String>? html_attributions;
//
//   /// URL to an image resource that can be used to represent this Place’s category.
//   external String? icon;
//
//   /// The Place’s phone number in international format. International format includes the country code, and is prefixed with the plus (+) sign. Only available with PlacesService.getDetails.
//   external String? international_phone_number;
//
//   /// The Place’s name. Note: In the case of user entered Places, this is the raw text, as typed by the user. Please exercise caution when using this data, as malicious users may try to use it as a vector for code injection attacks (See http://en.wikipedia.org/wiki/Code_injection).
//   external String? name;
//
//   /// Defines when the Place opens or closes.
//   external PlaceOpeningHours? opening_hours;
//
//   /// Photos of this Place. The collection will contain up to ten PlacePhoto objects.
//   external List<PlacePhoto>? photos;
//
//   /// A unique identifier for the Place.
//   external String? place_id;
//
//   /// Defines Open Location Codes or "plus codes" for the Place.
//   external PlacePlusCode? plus_code;
//
//   /// The price level of the Place, on a scale of 0 to 4. Price levels are interpreted as follows:
//   /// 0: Free
//   /// 1: Inexpensive
//   /// 2: Moderate
//   /// 3: Expensive
//   /// 4: Very Expensive
//   external int? price_level;
//
//   /// A rating, between 1.0 to 5.0, based on user reviews of this Place.
//   external int? rating;
//
//   /// A list of reviews of this Place. Only available with PlacesService.getDetails.
//   external List<PlaceReview> reviews;
//
//   /// An array of types for this Place (for example, ["political", "locality"] or ["restaurant", "establishment"]).
//   external List<String> types;
//
//   /// URL of the official Google page for this place. This is the Google-owned page that contains the best available information about the Place. Only available with PlacesService.getDetails.
//   external String? url;
//
//   /// The number of user ratings which contributed to this Place’s PlaceResult.rating.
//   external int? user_ratings_total;
//
//   /// The offset from UTC of the Place’s current timezone, in minutes. For example, Sydney, Australia in daylight savings is 11 hours ahead of UTC, so the utc_offset_minutes will be 660. For timezones behind UTC, the offset is negative. For example, the utc_offset_minutes is -60 for Cape Verde. Only available with PlacesService.getDetails.
//   external int? utc_offset_minutes;
//
//   /// The simplified address for the Place, including the street name, street number, and locality, but not the province/state, postal code, or country. For example, Google's Sydney, Australia office has a vicinity value of "48 Pirrama Road, Pyrmont". Only available with PlacesService.getDetails.
//   external String? vicinity;
//
//   /// The authoritative website for this Place, such as a business' homepage. Only available with PlacesService.getDetails.
//   external String? website;
// }
