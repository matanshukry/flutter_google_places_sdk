import 'package:flutter/foundation.dart';

class AddressComponent {
  const AddressComponent({
    required this.name,
    required this.shortName,
    required this.types,
  });

  final String name;
  final String shortName;
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
