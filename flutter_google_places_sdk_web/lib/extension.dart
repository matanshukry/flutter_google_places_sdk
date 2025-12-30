import 'dart:js_interop';

import 'package:google_maps/google_maps_places.dart';

/// Response type of [AutocompleteSuggestion.fetchAutocompleteSuggestions]
@JS()
extension type AutocompleteResponse._(JSObject _) implements JSObject {
  /// Access the 'suggestions' property as a JSArray
  external JSArray<AutocompleteSuggestion> get suggestions;
}

/// Response type of [Place.fetchFields]
@JS()
extension type FetchFieldsResponse._(JSObject _) implements JSObject {
  /// Access the 'place' property as a Place
  external Place get place;
}
