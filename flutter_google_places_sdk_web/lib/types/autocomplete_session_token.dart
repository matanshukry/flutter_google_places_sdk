@JS('google.maps.places')
library places;

import 'package:js/js.dart';

/// Represents a session token used for tracking an autocomplete session,
/// which can be a series of AutocompleteService.getPlacePredictions calls
/// followed by a single PlacesService.getDetails call.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#AutocompleteSessionToken
@JS()
@anonymous
class AutocompleteSessionToken {
  /// Creates a new instance of AutocompleteSessionToken.
  external AutocompleteSessionToken();
}
