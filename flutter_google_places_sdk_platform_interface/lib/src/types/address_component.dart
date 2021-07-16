import 'package:flutter/foundation.dart';

/// Represents a component of an address, e.g., street number, postcode, city, etc.
///
/// Ref: https://developers.google.com/maps/documentation/places/android-sdk/reference/com/google/android/libraries/places/api/model/AddressComponent
class AddressComponent {
  const AddressComponent({
    required this.name,
    required this.shortName,
    required this.types,
  });

  /// Name of the address component, e.g. "Sydney".
  final String name;

  /// Short name of the address component, e.g. "AU".
  final String shortName;

  /// Types of the AddressComponent
  ///
  /// For a list of supported types, see [Address Component Types](https://developers.google.com/maps/documentation/geocoding/overview#Types)
  final List<String> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressComponent &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          shortName == other.shortName &&
          listEquals(types, other.types);

  @override
  int get hashCode => name.hashCode ^ shortName.hashCode ^ types.hashCode;

  @override
  String toString() =>
      'Place{name: $name, shortName: $shortName, types: $types}';

  Map<String, dynamic> toMap() => {
        'name': name,
        'shortName': shortName,
        'types': types,
      };

  static AddressComponent fromMap(Map<String, dynamic> map) => AddressComponent(
        name: map['name'] ?? '',
        shortName: map['shortName'] ?? '',
        types: map['types']?.cast<String>() ?? <String>[],
      );
}
