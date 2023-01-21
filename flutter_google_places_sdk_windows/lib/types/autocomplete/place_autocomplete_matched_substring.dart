import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_autocomplete_matched_substring.freezed.dart';
part 'place_autocomplete_matched_substring.g.dart';

/// Autocomplete matched substring as returned from the google maps api.
@freezed
class PlaceAutocompleteMatchedSubstring
    with _$PlaceAutocompleteMatchedSubstring {
  /// Construct a [PlaceAutocompleteMatchedSubstring] object.
  const factory PlaceAutocompleteMatchedSubstring({
    /// Length of the matched substring in the prediction result text.
    required int length,

    /// Start location of the matched substring in the prediction result text.
    required int offset,
  }) = _PlaceAutocompleteMatchedSubstring;

  /// Parse a [PlaceAutocompleteMatchedSubstring] from json data.
  factory PlaceAutocompleteMatchedSubstring.fromJson(
          Map<String, Object?> json) =>
      _$PlaceAutocompleteMatchedSubstringFromJson(json);
}
