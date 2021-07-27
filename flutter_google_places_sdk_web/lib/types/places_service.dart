@JS('google.maps.places')
library places;

import 'dart:html';

import 'package:flutter_google_places_sdk_web/types/place_details_request.dart';
import 'package:js/js.dart';

/// Callback used in PlacesService.getDetails method
typedef void GetDetailsCallback(dynamic result, String status);

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
      PlaceDetailsRequest request, GetDetailsCallback callback);
}
