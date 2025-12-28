import 'dart:js_interop';

import 'package:google_maps/google_maps_places.dart';

@JS()
extension type AutocompleteResponse._(JSObject _) implements JSObject {
  // Access the 'suggestions' property as a JSArray
  external JSArray<AutocompleteSuggestion> get suggestions;
}