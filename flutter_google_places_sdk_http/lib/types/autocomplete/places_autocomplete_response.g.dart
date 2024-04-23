// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlacesAutocompleteResponseImpl _$$PlacesAutocompleteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PlacesAutocompleteResponseImpl(
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) =>
              PlaceAutocompletePrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$PlacesAutocompleteStatusEnumMap, json['status']),
      error_message: json['error_message'] as String?,
      info_messages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PlacesAutocompleteResponseImplToJson(
        _$PlacesAutocompleteResponseImpl instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
      'status': _$PlacesAutocompleteStatusEnumMap[instance.status]!,
      'error_message': instance.error_message,
      'info_messages': instance.info_messages,
    };

const _$PlacesAutocompleteStatusEnumMap = {
  PlacesAutocompleteStatus.OK: 'OK',
  PlacesAutocompleteStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  PlacesAutocompleteStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  PlacesAutocompleteStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  PlacesAutocompleteStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  PlacesAutocompleteStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};
