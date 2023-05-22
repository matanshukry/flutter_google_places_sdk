import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_address_component.freezed.dart';
part 'place_address_component.g.dart';

/// Place details address component from google maps api.
@freezed
class PlaceAddressComponent with _$PlaceAddressComponent {
  /// Construct a [PlaceAddressComponent] object.
  const factory PlaceAddressComponent({
    /// The full text description or name of the address component as returned by the Geocoder.
    required String? long_name,

    /// An abbreviated textual name for the address component, if available. 
    /// For example, an address component for the state of Alaska may have a long_name of "Alaska" and a short_name of "AK" using the 2-letter postal abbreviation.
    required String? short_name,

    /// An array indicating the type of the address component.
    required List<String>? types,
  }) = _PlaceAddressComponent;

  /// Parse a [PlaceAddressComponent] from json data.
  factory PlaceAddressComponent.fromJson(Map<String, dynamic> json) => _$PlaceAddressComponentFromJson(json);
}