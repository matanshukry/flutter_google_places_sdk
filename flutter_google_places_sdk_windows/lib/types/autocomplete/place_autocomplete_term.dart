import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_autocomplete_term.freezed.dart';
part 'place_autocomplete_term.g.dart';

/// Autocomplete Term as returned from the google maps api.
@freezed
class PlaceAutocompleteTerm with _$PlaceAutocompleteTerm {
  /// Construct a [PlaceAutocompleteTerm] object.
  const factory PlaceAutocompleteTerm({
    /// Defines the start position of this term in the description, measured in Unicode characters.
    required int offset,

    /// The text of the term.
    required String value,
  }) = _PlaceAutocompleteTerm;

  /// Parse a [PlaceAutocompleteTerm] from json data.
  factory PlaceAutocompleteTerm.fromJson(Map<String, Object?> json) =>
      _$PlaceAutocompleteTermFromJson(json);
}
