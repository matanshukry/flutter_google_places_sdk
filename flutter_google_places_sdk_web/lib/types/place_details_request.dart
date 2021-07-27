@JS('google.maps.places')
library places;

import 'package:flutter_google_places_sdk_web/types/autocomplete_session_token.dart';
import 'package:js/js.dart';

/// A Place details query to be sent to the PlacesService.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-service#PlaceDetailsRequest
@JS()
@anonymous
class PlaceDetailsRequest {
  /// Construct a new PlaceDetailsRequest
  external factory PlaceDetailsRequest({
    required String placeId,
    required List<String>? fields,
    required AutocompleteSessionToken? sessionToken,
  });

  /// The Place ID of the Place for which details are being requested.
  external String placeId;

  /// Fields to be included in the details response, which will be billed for.
  /// If no fields are specified or ['ALL'] is passed in, all available fields
  /// will be returned and billed for (this is not recommended for production deployments).
  /// For a list of fields see PlaceResult. Nested fields can be specified with dot-paths (for example, "geometry.location").
  external List<String>? fields;

  /// Unique reference used to bundle the details request with an autocomplete session.
  external AutocompleteSessionToken? sessionToken;
}
