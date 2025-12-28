import 'dart:js_interop';

import 'package:google_maps/google_maps_places.dart';

@JS()
extension type AutocompleteResponse._(JSObject _) implements JSObject {
  // Access the 'suggestions' property as a JSArray
  external JSArray<AutocompleteSuggestion> get suggestions;
}

@JS()
extension type FetchFieldsResponse._(JSObject _) implements JSObject {
  // Access the 'place' property as a Place
  external Place get place;
}
