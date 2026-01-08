// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_local_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceLocalTime {

/// The hours in 24 hour format (0 <= return value < 24).
 int get hours;/// The minutes (0 <= return value < 60).
 int get minutes;
/// Create a copy of PlaceLocalTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceLocalTimeCopyWith<PlaceLocalTime> get copyWith => _$PlaceLocalTimeCopyWithImpl<PlaceLocalTime>(this as PlaceLocalTime, _$identity);

  /// Serializes this PlaceLocalTime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceLocalTime&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.minutes, minutes) || other.minutes == minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hours,minutes);

@override
String toString() {
  return 'PlaceLocalTime(hours: $hours, minutes: $minutes)';
}


}

/// @nodoc
abstract mixin class $PlaceLocalTimeCopyWith<$Res>  {
  factory $PlaceLocalTimeCopyWith(PlaceLocalTime value, $Res Function(PlaceLocalTime) _then) = _$PlaceLocalTimeCopyWithImpl;
@useResult
$Res call({
 int hours, int minutes
});




}
/// @nodoc
class _$PlaceLocalTimeCopyWithImpl<$Res>
    implements $PlaceLocalTimeCopyWith<$Res> {
  _$PlaceLocalTimeCopyWithImpl(this._self, this._then);

  final PlaceLocalTime _self;
  final $Res Function(PlaceLocalTime) _then;

/// Create a copy of PlaceLocalTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hours = null,Object? minutes = null,}) {
  return _then(_self.copyWith(
hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int,minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceLocalTime].
extension PlaceLocalTimePatterns on PlaceLocalTime {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceLocalTime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceLocalTime() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceLocalTime value)  $default,){
final _that = this;
switch (_that) {
case _PlaceLocalTime():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceLocalTime value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceLocalTime() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hours,  int minutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceLocalTime() when $default != null:
return $default(_that.hours,_that.minutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hours,  int minutes)  $default,) {final _that = this;
switch (_that) {
case _PlaceLocalTime():
return $default(_that.hours,_that.minutes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hours,  int minutes)?  $default,) {final _that = this;
switch (_that) {
case _PlaceLocalTime() when $default != null:
return $default(_that.hours,_that.minutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceLocalTime implements PlaceLocalTime {
  const _PlaceLocalTime({required this.hours, required this.minutes});
  factory _PlaceLocalTime.fromJson(Map<String, dynamic> json) => _$PlaceLocalTimeFromJson(json);

/// The hours in 24 hour format (0 <= return value < 24).
@override final  int hours;
/// The minutes (0 <= return value < 60).
@override final  int minutes;

/// Create a copy of PlaceLocalTime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceLocalTimeCopyWith<_PlaceLocalTime> get copyWith => __$PlaceLocalTimeCopyWithImpl<_PlaceLocalTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceLocalTimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceLocalTime&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.minutes, minutes) || other.minutes == minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hours,minutes);

@override
String toString() {
  return 'PlaceLocalTime(hours: $hours, minutes: $minutes)';
}


}

/// @nodoc
abstract mixin class _$PlaceLocalTimeCopyWith<$Res> implements $PlaceLocalTimeCopyWith<$Res> {
  factory _$PlaceLocalTimeCopyWith(_PlaceLocalTime value, $Res Function(_PlaceLocalTime) _then) = __$PlaceLocalTimeCopyWithImpl;
@override @useResult
$Res call({
 int hours, int minutes
});




}
/// @nodoc
class __$PlaceLocalTimeCopyWithImpl<$Res>
    implements _$PlaceLocalTimeCopyWith<$Res> {
  __$PlaceLocalTimeCopyWithImpl(this._self, this._then);

  final _PlaceLocalTime _self;
  final $Res Function(_PlaceLocalTime) _then;

/// Create a copy of PlaceLocalTime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hours = null,Object? minutes = null,}) {
  return _then(_PlaceLocalTime(
hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int,minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
