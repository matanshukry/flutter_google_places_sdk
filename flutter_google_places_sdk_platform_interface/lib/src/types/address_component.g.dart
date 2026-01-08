// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressComponent _$AddressComponentFromJson(Map json) => _AddressComponent(
  name: json['name'] as String,
  shortName: json['shortName'] as String,
  types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$AddressComponentToJson(_AddressComponent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'shortName': instance.shortName,
      'types': instance.types,
    };
