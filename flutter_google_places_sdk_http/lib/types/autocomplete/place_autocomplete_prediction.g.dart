// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlacesAutocompletePredictionImpl _$$PlacesAutocompletePredictionImplFromJson(
        Map<String, dynamic> json) =>
    _$PlacesAutocompletePredictionImpl(
      description: json['description'] as String,
      matched_substrings: (json['matched_substrings'] as List<dynamic>)
          .map((e) => PlaceAutocompleteMatchedSubstring.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      structured_formatting: PlaceAutocompleteStructuredFormat.fromJson(
          json['structured_formatting'] as Map<String, dynamic>),
      terms: (json['terms'] as List<dynamic>)
          .map((e) => PlaceAutocompleteTerm.fromJson(e as Map<String, dynamic>))
          .toList(),
      distance_meters: json['distance_meters'] as int?,
      place_id: json['place_id'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PlacesAutocompletePredictionImplToJson(
        _$PlacesAutocompletePredictionImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matched_substrings': instance.matched_substrings,
      'structured_formatting': instance.structured_formatting,
      'terms': instance.terms,
      'distance_meters': instance.distance_meters,
      'place_id': instance.place_id,
      'types': instance.types,
    };
