import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart'
    as inter;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'place_autocomplete_matched_substring.dart';
import 'place_autocomplete_structured_format.dart';
import 'place_autocomplete_term.dart';

part 'place_autocomplete_prediction.freezed.dart';
part 'place_autocomplete_prediction.g.dart';

/// Prediction result from google maps api.
@freezed
class PlaceAutocompletePrediction with _$PlaceAutocompletePrediction {
  const PlaceAutocompletePrediction._();

  /// Construct a [PlaceAutocompletePrediction] object.
  const factory PlaceAutocompletePrediction({
    /// Contains the human-readable name for the returned result.
    /// For establishment results, this is usually the business name.
    /// This content is meant to be read as-is. Do not programmatically
    /// parse the formatted address.
    required String description,

    /// A list of substrings that describe the location of the entered term
    /// in the prediction result text, so that the term can be highlighted if desired.
    required List<PlaceAutocompleteMatchedSubstring> matched_substrings,

    /// Provides pre-formatted text that can be shown in your autocomplete results.
    /// This content is meant to be read as-is. Do not programmatically parse the formatted address.
    required PlaceAutocompleteStructuredFormat structured_formatting,

    /// Contains an array of terms identifying each section of the returned
    /// description (a section of the description is generally terminated with a comma).
    /// Each entry in the array has a value field, containing the text of the term,
    /// and an offset field, defining the start position of this term in the description,
    /// measured in Unicode characters.
    required List<PlaceAutocompleteTerm> terms,

    /// The straight-line distance in meters from the origin.
    /// This field is only returned for requests made with an origin.
    int? distance_meters,

    /// A textual identifier that uniquely identifies a place.
    /// To retrieve information about the place, pass this identifier in the
    /// placeId field of a Places API request. For more information about
    /// place IDs, see the Place IDs overview.
    String? place_id,

    /// Contains an array of types that apply to this place.
    /// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
    /// The array can contain multiple values.
    List<String>? types,
  }) = _PlacesAutocompletePrediction;

  /// Create the interface-equivalent type [inter.AutocompletePrediction] from
  /// this instance.
  inter.AutocompletePrediction toInterface() {
    return inter.AutocompletePrediction(
      distanceMeters: distance_meters,
      placeId: place_id ?? '',
      primaryText: structured_formatting.main_text,
      secondaryText: structured_formatting.secondary_text,
      fullText: description,
    );
  }

  /// Parse a [PlaceAutocompletePrediction] from json data.
  factory PlaceAutocompletePrediction.fromJson(Map<String, Object?> json) =>
      _$PlaceAutocompletePredictionFromJson(json);
}
