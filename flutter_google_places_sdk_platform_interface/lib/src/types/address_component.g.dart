// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressComponentImpl _$$AddressComponentImplFromJson(Map json) =>
    _$AddressComponentImpl(
      name: json['name'] as String,
      shortName: json['shortName'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AddressComponentImplToJson(
        _$AddressComponentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'shortName': instance.shortName,
      'types': instance.types,
    };
