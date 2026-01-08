// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_of_week.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimeOfWeek {

/// The day of the week.
 DayOfWeek get day;/// The time in 24 hour format, for example "1730", or "0000"
 PlaceLocalTime get time;
/// Create a copy of TimeOfWeek
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeOfWeekCopyWith<TimeOfWeek> get copyWith => _$TimeOfWeekCopyWithImpl<TimeOfWeek>(this as TimeOfWeek, _$identity);

  /// Serializes this TimeOfWeek to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeOfWeek&&(identical(other.day, day) || other.day == day)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,time);

@override
String toString() {
  return 'TimeOfWeek(day: $day, time: $time)';
}


}

/// @nodoc
abstract mixin class $TimeOfWeekCopyWith<$Res>  {
  factory $TimeOfWeekCopyWith(TimeOfWeek value, $Res Function(TimeOfWeek) _then) = _$TimeOfWeekCopyWithImpl;
@useResult
$Res call({
 DayOfWeek day, PlaceLocalTime time
});


$PlaceLocalTimeCopyWith<$Res> get time;

}
/// @nodoc
class _$TimeOfWeekCopyWithImpl<$Res>
    implements $TimeOfWeekCopyWith<$Res> {
  _$TimeOfWeekCopyWithImpl(this._self, this._then);

  final TimeOfWeek _self;
  final $Res Function(TimeOfWeek) _then;

/// Create a copy of TimeOfWeek
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? time = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as DayOfWeek,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as PlaceLocalTime,
  ));
}
/// Create a copy of TimeOfWeek
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceLocalTimeCopyWith<$Res> get time {
  
  return $PlaceLocalTimeCopyWith<$Res>(_self.time, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}


/// Adds pattern-matching-related methods to [TimeOfWeek].
extension TimeOfWeekPatterns on TimeOfWeek {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeOfWeek value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeOfWeek() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeOfWeek value)  $default,){
final _that = this;
switch (_that) {
case _TimeOfWeek():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeOfWeek value)?  $default,){
final _that = this;
switch (_that) {
case _TimeOfWeek() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DayOfWeek day,  PlaceLocalTime time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeOfWeek() when $default != null:
return $default(_that.day,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DayOfWeek day,  PlaceLocalTime time)  $default,) {final _that = this;
switch (_that) {
case _TimeOfWeek():
return $default(_that.day,_that.time);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DayOfWeek day,  PlaceLocalTime time)?  $default,) {final _that = this;
switch (_that) {
case _TimeOfWeek() when $default != null:
return $default(_that.day,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeOfWeek implements TimeOfWeek {
  const _TimeOfWeek({required this.day, required this.time});
  factory _TimeOfWeek.fromJson(Map<String, dynamic> json) => _$TimeOfWeekFromJson(json);

/// The day of the week.
@override final  DayOfWeek day;
/// The time in 24 hour format, for example "1730", or "0000"
@override final  PlaceLocalTime time;

/// Create a copy of TimeOfWeek
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeOfWeekCopyWith<_TimeOfWeek> get copyWith => __$TimeOfWeekCopyWithImpl<_TimeOfWeek>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeOfWeekToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeOfWeek&&(identical(other.day, day) || other.day == day)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,time);

@override
String toString() {
  return 'TimeOfWeek(day: $day, time: $time)';
}


}

/// @nodoc
abstract mixin class _$TimeOfWeekCopyWith<$Res> implements $TimeOfWeekCopyWith<$Res> {
  factory _$TimeOfWeekCopyWith(_TimeOfWeek value, $Res Function(_TimeOfWeek) _then) = __$TimeOfWeekCopyWithImpl;
@override @useResult
$Res call({
 DayOfWeek day, PlaceLocalTime time
});


@override $PlaceLocalTimeCopyWith<$Res> get time;

}
/// @nodoc
class __$TimeOfWeekCopyWithImpl<$Res>
    implements _$TimeOfWeekCopyWith<$Res> {
  __$TimeOfWeekCopyWithImpl(this._self, this._then);

  final _TimeOfWeek _self;
  final $Res Function(_TimeOfWeek) _then;

/// Create a copy of TimeOfWeek
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? time = null,}) {
  return _then(_TimeOfWeek(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as DayOfWeek,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as PlaceLocalTime,
  ));
}

/// Create a copy of TimeOfWeek
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceLocalTimeCopyWith<$Res> get time {
  
  return $PlaceLocalTimeCopyWith<$Res>(_self.time, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}

// dart format on
