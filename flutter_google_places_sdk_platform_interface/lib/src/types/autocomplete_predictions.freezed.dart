// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autocomplete_predictions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutocompletePrediction {

/// the straight-line distance between the place being referred to by getPlaceId() and the origin specified in the request.
 int? get distanceMeters;/// the place ID of the place being referred to by this prediction.
 String get placeId;/// the list of place types associated with the place referred to by getPlaceId()
 List<PlaceType>? get placeTypes;/// the primary text of a place.
 String get primaryText;/// the secondary text of a place.
 String get secondaryText;/// The full text of a place.
 String get fullText;
/// Create a copy of AutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutocompletePredictionCopyWith<AutocompletePrediction> get copyWith => _$AutocompletePredictionCopyWithImpl<AutocompletePrediction>(this as AutocompletePrediction, _$identity);

  /// Serializes this AutocompletePrediction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutocompletePrediction&&(identical(other.distanceMeters, distanceMeters) || other.distanceMeters == distanceMeters)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&const DeepCollectionEquality().equals(other.placeTypes, placeTypes)&&(identical(other.primaryText, primaryText) || other.primaryText == primaryText)&&(identical(other.secondaryText, secondaryText) || other.secondaryText == secondaryText)&&(identical(other.fullText, fullText) || other.fullText == fullText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distanceMeters,placeId,const DeepCollectionEquality().hash(placeTypes),primaryText,secondaryText,fullText);

@override
String toString() {
  return 'AutocompletePrediction(distanceMeters: $distanceMeters, placeId: $placeId, placeTypes: $placeTypes, primaryText: $primaryText, secondaryText: $secondaryText, fullText: $fullText)';
}


}

/// @nodoc
abstract mixin class $AutocompletePredictionCopyWith<$Res>  {
  factory $AutocompletePredictionCopyWith(AutocompletePrediction value, $Res Function(AutocompletePrediction) _then) = _$AutocompletePredictionCopyWithImpl;
@useResult
$Res call({
 int? distanceMeters, String placeId, List<PlaceType>? placeTypes, String primaryText, String secondaryText, String fullText
});




}
/// @nodoc
class _$AutocompletePredictionCopyWithImpl<$Res>
    implements $AutocompletePredictionCopyWith<$Res> {
  _$AutocompletePredictionCopyWithImpl(this._self, this._then);

  final AutocompletePrediction _self;
  final $Res Function(AutocompletePrediction) _then;

/// Create a copy of AutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? distanceMeters = freezed,Object? placeId = null,Object? placeTypes = freezed,Object? primaryText = null,Object? secondaryText = null,Object? fullText = null,}) {
  return _then(_self.copyWith(
distanceMeters: freezed == distanceMeters ? _self.distanceMeters : distanceMeters // ignore: cast_nullable_to_non_nullable
as int?,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,placeTypes: freezed == placeTypes ? _self.placeTypes : placeTypes // ignore: cast_nullable_to_non_nullable
as List<PlaceType>?,primaryText: null == primaryText ? _self.primaryText : primaryText // ignore: cast_nullable_to_non_nullable
as String,secondaryText: null == secondaryText ? _self.secondaryText : secondaryText // ignore: cast_nullable_to_non_nullable
as String,fullText: null == fullText ? _self.fullText : fullText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AutocompletePrediction].
extension AutocompletePredictionPatterns on AutocompletePrediction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutocompletePrediction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutocompletePrediction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutocompletePrediction value)  $default,){
final _that = this;
switch (_that) {
case _AutocompletePrediction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutocompletePrediction value)?  $default,){
final _that = this;
switch (_that) {
case _AutocompletePrediction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? distanceMeters,  String placeId,  List<PlaceType>? placeTypes,  String primaryText,  String secondaryText,  String fullText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutocompletePrediction() when $default != null:
return $default(_that.distanceMeters,_that.placeId,_that.placeTypes,_that.primaryText,_that.secondaryText,_that.fullText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? distanceMeters,  String placeId,  List<PlaceType>? placeTypes,  String primaryText,  String secondaryText,  String fullText)  $default,) {final _that = this;
switch (_that) {
case _AutocompletePrediction():
return $default(_that.distanceMeters,_that.placeId,_that.placeTypes,_that.primaryText,_that.secondaryText,_that.fullText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? distanceMeters,  String placeId,  List<PlaceType>? placeTypes,  String primaryText,  String secondaryText,  String fullText)?  $default,) {final _that = this;
switch (_that) {
case _AutocompletePrediction() when $default != null:
return $default(_that.distanceMeters,_that.placeId,_that.placeTypes,_that.primaryText,_that.secondaryText,_that.fullText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AutocompletePrediction implements AutocompletePrediction {
  const _AutocompletePrediction({required this.distanceMeters, required this.placeId, final  List<PlaceType>? placeTypes, required this.primaryText, required this.secondaryText, required this.fullText}): _placeTypes = placeTypes;
  factory _AutocompletePrediction.fromJson(Map<String, dynamic> json) => _$AutocompletePredictionFromJson(json);

/// the straight-line distance between the place being referred to by getPlaceId() and the origin specified in the request.
@override final  int? distanceMeters;
/// the place ID of the place being referred to by this prediction.
@override final  String placeId;
/// the list of place types associated with the place referred to by getPlaceId()
 final  List<PlaceType>? _placeTypes;
/// the list of place types associated with the place referred to by getPlaceId()
@override List<PlaceType>? get placeTypes {
  final value = _placeTypes;
  if (value == null) return null;
  if (_placeTypes is EqualUnmodifiableListView) return _placeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// the primary text of a place.
@override final  String primaryText;
/// the secondary text of a place.
@override final  String secondaryText;
/// The full text of a place.
@override final  String fullText;

/// Create a copy of AutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutocompletePredictionCopyWith<_AutocompletePrediction> get copyWith => __$AutocompletePredictionCopyWithImpl<_AutocompletePrediction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutocompletePredictionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutocompletePrediction&&(identical(other.distanceMeters, distanceMeters) || other.distanceMeters == distanceMeters)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&const DeepCollectionEquality().equals(other._placeTypes, _placeTypes)&&(identical(other.primaryText, primaryText) || other.primaryText == primaryText)&&(identical(other.secondaryText, secondaryText) || other.secondaryText == secondaryText)&&(identical(other.fullText, fullText) || other.fullText == fullText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distanceMeters,placeId,const DeepCollectionEquality().hash(_placeTypes),primaryText,secondaryText,fullText);

@override
String toString() {
  return 'AutocompletePrediction(distanceMeters: $distanceMeters, placeId: $placeId, placeTypes: $placeTypes, primaryText: $primaryText, secondaryText: $secondaryText, fullText: $fullText)';
}


}

/// @nodoc
abstract mixin class _$AutocompletePredictionCopyWith<$Res> implements $AutocompletePredictionCopyWith<$Res> {
  factory _$AutocompletePredictionCopyWith(_AutocompletePrediction value, $Res Function(_AutocompletePrediction) _then) = __$AutocompletePredictionCopyWithImpl;
@override @useResult
$Res call({
 int? distanceMeters, String placeId, List<PlaceType>? placeTypes, String primaryText, String secondaryText, String fullText
});




}
/// @nodoc
class __$AutocompletePredictionCopyWithImpl<$Res>
    implements _$AutocompletePredictionCopyWith<$Res> {
  __$AutocompletePredictionCopyWithImpl(this._self, this._then);

  final _AutocompletePrediction _self;
  final $Res Function(_AutocompletePrediction) _then;

/// Create a copy of AutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? distanceMeters = freezed,Object? placeId = null,Object? placeTypes = freezed,Object? primaryText = null,Object? secondaryText = null,Object? fullText = null,}) {
  return _then(_AutocompletePrediction(
distanceMeters: freezed == distanceMeters ? _self.distanceMeters : distanceMeters // ignore: cast_nullable_to_non_nullable
as int?,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,placeTypes: freezed == placeTypes ? _self._placeTypes : placeTypes // ignore: cast_nullable_to_non_nullable
as List<PlaceType>?,primaryText: null == primaryText ? _self.primaryText : primaryText // ignore: cast_nullable_to_non_nullable
as String,secondaryText: null == secondaryText ? _self.secondaryText : secondaryText // ignore: cast_nullable_to_non_nullable
as String,fullText: null == fullText ? _self.fullText : fullText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
