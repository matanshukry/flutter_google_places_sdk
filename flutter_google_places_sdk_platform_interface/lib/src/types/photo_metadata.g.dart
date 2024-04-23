// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoMetadataImpl _$$PhotoMetadataImplFromJson(Map json) =>
    _$PhotoMetadataImpl(
      photoReference: json['photoReference'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      attributions: json['attributions'] as String,
    );

Map<String, dynamic> _$$PhotoMetadataImplToJson(_$PhotoMetadataImpl instance) =>
    <String, dynamic>{
      'photoReference': instance.photoReference,
      'width': instance.width,
      'height': instance.height,
      'attributions': instance.attributions,
    };
