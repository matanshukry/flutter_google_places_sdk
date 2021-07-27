@JS('google.maps.places')
library places;

import 'package:js/js.dart';

/// An Autocomplete response returned by the call to AutocompleteService.getPlacePredictions
/// containing a list of AutocompletePredictions.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#AutocompleteResponse
@JS()
class AutocompleteResponse {
  /// Creates an AutocompleteResponse
  external AutocompleteResponse();

  /// The list of AutocompletePredictions
  external List<AutocompletePredictionWeb> predictions;
}

/// Represents a single autocomplete prediction.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#AutocompletePrediction
@JS()
class AutocompletePredictionWeb {
  /// This is the unformatted version of the query suggested by the Places service.
  external String? description;

  /// A set of substrings in the place's description that match elements in the user's input,
  /// suitable for use in highlighting those substrings. Each substring is identified by an offset and a length,
  /// expressed in unicode characters.
  // final List<PredictionSubstring> matched_substrings

  /// A place ID that can be used to retrieve details about this place using
  /// the place details service (see PlacesService.getDetails).
  external String place_id;

  /// Structured information about the place's description, divided into a
  /// main text and a secondary text, including an array of matched substrings
  /// from the autocomplete input, identified by an offset and a length,
  /// expressed in unicode characters.
  external StructuredFormatting structured_formatting;

  /// Information about individual terms in the above description,
  /// from most to least specific. For example, "Taco Bell", "Willitis", and "CA".
  // external List<PredictionTerm> terms;

  /// An array of types that the prediction belongs to, for example 'establishment' or 'geocode'.
  external List<String> types;

  /// The distance in meters of the place from the AutocompletionRequest.origin.
  external int? distance_meters;
}

/// Contains structured information about the place's description,
/// divided into a main text and a secondary text, including an array of
/// matched substrings from the autocomplete input, identified by an offset
/// and a length, expressed in unicode characters.
///
/// Ref: https://developers.google.com/maps/documentation/javascript/reference/places-autocomplete-service#StructuredFormatting
@JS()
class StructuredFormatting {
  /// This is the main text part of the unformatted description of the place
  /// suggested by the Places service. Usually the name of the place.
  external String main_text;

  /// A set of substrings in the main text that match elements in the user's input,
  /// suitable for use in highlighting those substrings. Each substring is identified
  /// by an offset and a length, expressed in unicode characters.
  // final List<PredictionSubstring> main_text_matched_substrings;

  /// This is the secondary text part of the unformatted description of the place suggested by the Places service. Usually the location of the place.
  external String secondary_text;
}
