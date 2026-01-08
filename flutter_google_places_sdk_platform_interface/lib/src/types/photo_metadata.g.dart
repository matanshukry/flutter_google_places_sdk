// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhotoMetadata _$PhotoMetadataFromJson(Map json) => _PhotoMetadata(
  photoReference: json['photoReference'] as String,
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  attributions: json['attributions'] as String,
);

Map<String, dynamic> _$PhotoMetadataToJson(_PhotoMetadata instance) =>
    <String, dynamic>{
      'photoReference': instance.photoReference,
      'width': instance.width,
      'height': instance.height,
      'attributions': instance.attributions,
    };
