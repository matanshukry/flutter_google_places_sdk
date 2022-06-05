import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_component.freezed.dart';
part 'address_component.g.dart';

/// Represents a component of an address, e.g., street number, postcode, city, etc.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/AddressComponent
@freezed
class AddressComponent with _$AddressComponent {
  /// Constructs an [AddressComponent] object.
  const factory AddressComponent({
    /// Name of the address component, e.g. "Sydney".
    required String name,

    /// Short name of the address component, e.g. "AU".
    required String shortName,

    /// Types of the AddressComponent
    ///
    /// For a list of supported types, see [Address Component Types](https://developers.google.com/maps/documentation/geocoding/overview#Types)
    required List<String> types,
  }) = _AddressComponent;

  /// Parse an [AddressComponent] from json.
  factory AddressComponent.fromJson(Map<String, Object?> json) =>
      _$AddressComponentFromJson(json);
}
