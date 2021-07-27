@JS('google.maps.places')
library places;

import 'package:js/js.dart';

/// The status returned by the PlacesService on the completion of its searches.
@JS()
@anonymous
class PlacesServiceStatus {
  /// This request was invalid.
  external String INVALID_REQUEST;

  /// The place referenced was not found.
  external String NOT_FOUND;

  /// The response contains a valid result.
  external String OK;

  /// The application has gone over its request quota.
  external String OVER_QUERY_LIMIT;

  /// The application is not allowed to use the PlacesService.
  external String REQUEST_DENIED;

  /// The PlacesService request could not be processed due to a server error. The request may succeed if you try again.
  external String UNKNOWN_ERROR;

  /// No result was found for this request.
  external String ZERO_RESULTS;
}
