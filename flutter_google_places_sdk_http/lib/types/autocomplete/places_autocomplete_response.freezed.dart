// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_autocomplete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlacesAutocompleteResponse {

/// Contains an array of predictions.
 List<PlaceAutocompletePrediction> get predictions;/// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
 PlacesAutocompleteStatus get status;/// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
 String? get error_message;/// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
 List<String>? get info_messages;
/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacesAutocompleteResponseCopyWith<PlacesAutocompleteResponse> get copyWith => _$PlacesAutocompleteResponseCopyWithImpl<PlacesAutocompleteResponse>(this as PlacesAutocompleteResponse, _$identity);

  /// Serializes this PlacesAutocompleteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesAutocompleteResponse&&const DeepCollectionEquality().equals(other.predictions, predictions)&&(identical(other.status, status) || other.status == status)&&(identical(other.error_message, error_message) || other.error_message == error_message)&&const DeepCollectionEquality().equals(other.info_messages, info_messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(predictions),status,error_message,const DeepCollectionEquality().hash(info_messages));

@override
String toString() {
  return 'PlacesAutocompleteResponse(predictions: $predictions, status: $status, error_message: $error_message, info_messages: $info_messages)';
}


}

/// @nodoc
abstract mixin class $PlacesAutocompleteResponseCopyWith<$Res>  {
  factory $PlacesAutocompleteResponseCopyWith(PlacesAutocompleteResponse value, $Res Function(PlacesAutocompleteResponse) _then) = _$PlacesAutocompleteResponseCopyWithImpl;
@useResult
$Res call({
 List<PlaceAutocompletePrediction> predictions, PlacesAutocompleteStatus status, String? error_message, List<String>? info_messages
});




}
/// @nodoc
class _$PlacesAutocompleteResponseCopyWithImpl<$Res>
    implements $PlacesAutocompleteResponseCopyWith<$Res> {
  _$PlacesAutocompleteResponseCopyWithImpl(this._self, this._then);

  final PlacesAutocompleteResponse _self;
  final $Res Function(PlacesAutocompleteResponse) _then;

/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? predictions = null,Object? status = null,Object? error_message = freezed,Object? info_messages = freezed,}) {
  return _then(_self.copyWith(
predictions: null == predictions ? _self.predictions : predictions // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompletePrediction>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PlacesAutocompleteStatus,error_message: freezed == error_message ? _self.error_message : error_message // ignore: cast_nullable_to_non_nullable
as String?,info_messages: freezed == info_messages ? _self.info_messages : info_messages // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacesAutocompleteResponse].
extension PlacesAutocompleteResponsePatterns on PlacesAutocompleteResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacesAutocompleteResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacesAutocompleteResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacesAutocompleteResponse value)  $default,){
final _that = this;
switch (_that) {
case _PlacesAutocompleteResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacesAutocompleteResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PlacesAutocompleteResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PlaceAutocompletePrediction> predictions,  PlacesAutocompleteStatus status,  String? error_message,  List<String>? info_messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacesAutocompleteResponse() when $default != null:
return $default(_that.predictions,_that.status,_that.error_message,_that.info_messages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PlaceAutocompletePrediction> predictions,  PlacesAutocompleteStatus status,  String? error_message,  List<String>? info_messages)  $default,) {final _that = this;
switch (_that) {
case _PlacesAutocompleteResponse():
return $default(_that.predictions,_that.status,_that.error_message,_that.info_messages);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PlaceAutocompletePrediction> predictions,  PlacesAutocompleteStatus status,  String? error_message,  List<String>? info_messages)?  $default,) {final _that = this;
switch (_that) {
case _PlacesAutocompleteResponse() when $default != null:
return $default(_that.predictions,_that.status,_that.error_message,_that.info_messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacesAutocompleteResponse implements PlacesAutocompleteResponse {
  const _PlacesAutocompleteResponse({required final  List<PlaceAutocompletePrediction> predictions, required this.status, required this.error_message, required final  List<String>? info_messages}): _predictions = predictions,_info_messages = info_messages;
  factory _PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) => _$PlacesAutocompleteResponseFromJson(json);

/// Contains an array of predictions.
 final  List<PlaceAutocompletePrediction> _predictions;
/// Contains an array of predictions.
@override List<PlaceAutocompletePrediction> get predictions {
  if (_predictions is EqualUnmodifiableListView) return _predictions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_predictions);
}

/// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
@override final  PlacesAutocompleteStatus status;
/// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
@override final  String? error_message;
/// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
 final  List<String>? _info_messages;
/// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
@override List<String>? get info_messages {
  final value = _info_messages;
  if (value == null) return null;
  if (_info_messages is EqualUnmodifiableListView) return _info_messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesAutocompleteResponseCopyWith<_PlacesAutocompleteResponse> get copyWith => __$PlacesAutocompleteResponseCopyWithImpl<_PlacesAutocompleteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacesAutocompleteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesAutocompleteResponse&&const DeepCollectionEquality().equals(other._predictions, _predictions)&&(identical(other.status, status) || other.status == status)&&(identical(other.error_message, error_message) || other.error_message == error_message)&&const DeepCollectionEquality().equals(other._info_messages, _info_messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_predictions),status,error_message,const DeepCollectionEquality().hash(_info_messages));

@override
String toString() {
  return 'PlacesAutocompleteResponse(predictions: $predictions, status: $status, error_message: $error_message, info_messages: $info_messages)';
}


}

/// @nodoc
abstract mixin class _$PlacesAutocompleteResponseCopyWith<$Res> implements $PlacesAutocompleteResponseCopyWith<$Res> {
  factory _$PlacesAutocompleteResponseCopyWith(_PlacesAutocompleteResponse value, $Res Function(_PlacesAutocompleteResponse) _then) = __$PlacesAutocompleteResponseCopyWithImpl;
@override @useResult
$Res call({
 List<PlaceAutocompletePrediction> predictions, PlacesAutocompleteStatus status, String? error_message, List<String>? info_messages
});




}
/// @nodoc
class __$PlacesAutocompleteResponseCopyWithImpl<$Res>
    implements _$PlacesAutocompleteResponseCopyWith<$Res> {
  __$PlacesAutocompleteResponseCopyWithImpl(this._self, this._then);

  final _PlacesAutocompleteResponse _self;
  final $Res Function(_PlacesAutocompleteResponse) _then;

/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? predictions = null,Object? status = null,Object? error_message = freezed,Object? info_messages = freezed,}) {
  return _then(_PlacesAutocompleteResponse(
predictions: null == predictions ? _self._predictions : predictions // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompletePrediction>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PlacesAutocompleteStatus,error_message: freezed == error_message ? _self.error_message : error_message // ignore: cast_nullable_to_non_nullable
as String?,info_messages: freezed == info_messages ? _self._info_messages : info_messages // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
