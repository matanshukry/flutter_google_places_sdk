// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Review _$ReviewFromJson(Map json) => _Review(
  attribution: json['attribution'] as String,
  authorAttribution: AuthorAttribution.fromJson(
    Map<String, Object?>.from(json['authorAttribution'] as Map),
  ),
  rating: (json['rating'] as num).toDouble(),
  publishTime: json['publishTime'] as String,
  relativePublishTimeDescription:
      json['relativePublishTimeDescription'] as String,
  originalText: json['originalText'] as String?,
  originalTextLanguageCode: json['originalTextLanguageCode'] as String?,
  text: json['text'] as String?,
  textLanguageCode: json['textLanguageCode'] as String?,
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'attribution': instance.attribution,
  'authorAttribution': instance.authorAttribution.toJson(),
  'rating': instance.rating,
  'publishTime': instance.publishTime,
  'relativePublishTimeDescription': instance.relativePublishTimeDescription,
  'originalText': instance.originalText,
  'originalTextLanguageCode': instance.originalTextLanguageCode,
  'text': instance.text,
  'textLanguageCode': instance.textLanguageCode,
};
