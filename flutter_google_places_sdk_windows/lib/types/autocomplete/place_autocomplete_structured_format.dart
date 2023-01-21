import 'package:freezed_annotation/freezed_annotation.dart';

import 'place_autocomplete_matched_substring.dart';

part 'place_autocomplete_structured_format.freezed.dart';
part 'place_autocomplete_structured_format.g.dart';

/// Autocomplete Structured Format as returned from the google maps api.
@freezed
class PlaceAutocompleteStructuredFormat
    with _$PlaceAutocompleteStructuredFormat {
  /// Construct a [PlaceAutocompleteStructuredFormat ] object.
  const factory PlaceAutocompleteStructuredFormat({
    /// Contains the main text of a prediction, usually the name of the place.
    required String main_text,

    /// Contains an array with offset value and length.
    /// These describe the location of the entered term in the prediction result text,
    /// so that the term can be highlighted if desired.
    required List<PlaceAutocompleteMatchedSubstring>
        main_text_matched_substrings,

    /// Contains the secondary text of a prediction, usually the location of the place.
    required String secondary_text,

    /// Contains an array with offset value and length.
    /// These describe the location of the entered term in the prediction result text,
    /// so that the term can be highlighted if desired.
    List<PlaceAutocompleteMatchedSubstring>? secondary_text_matched_substrings,
  }) = _PlaceAutocompleteStructuredFormat;

  /// Parse a [PlaceAutocompleteStructuredFormat] from json data.
  factory PlaceAutocompleteStructuredFormat.fromJson(
          Map<String, Object?> json) =>
      _$PlaceAutocompleteStructuredFormatFromJson(json);
}
