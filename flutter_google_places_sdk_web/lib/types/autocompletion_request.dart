@JS('google.maps.places')
library places;

import 'package:js/js.dart';

/// google.maps.places.AutocompletionRequest interface
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#AutocompletionRequest
@JS()
@anonymous
class AutocompletionRequest {
  /// Create an AutocompletionRequest
  external factory AutocompletionRequest({String input});

  /// The user entered input string.
  external String get input;
}
