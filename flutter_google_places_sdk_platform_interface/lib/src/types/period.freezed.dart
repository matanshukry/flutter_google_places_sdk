// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Period {

 TimeOfWeek get open; TimeOfWeek? get close;
/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeriodCopyWith<Period> get copyWith => _$PeriodCopyWithImpl<Period>(this as Period, _$identity);

  /// Serializes this Period to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Period&&(identical(other.open, open) || other.open == open)&&(identical(other.close, close) || other.close == close));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,open,close);

@override
String toString() {
  return 'Period(open: $open, close: $close)';
}


}

/// @nodoc
abstract mixin class $PeriodCopyWith<$Res>  {
  factory $PeriodCopyWith(Period value, $Res Function(Period) _then) = _$PeriodCopyWithImpl;
@useResult
$Res call({
 TimeOfWeek open, TimeOfWeek? close
});


$TimeOfWeekCopyWith<$Res> get open;$TimeOfWeekCopyWith<$Res>? get close;

}
/// @nodoc
class _$PeriodCopyWithImpl<$Res>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._self, this._then);

  final Period _self;
  final $Res Function(Period) _then;

/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? open = null,Object? close = freezed,}) {
  return _then(_self.copyWith(
open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as TimeOfWeek,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as TimeOfWeek?,
  ));
}
/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfWeekCopyWith<$Res> get open {
  
  return $TimeOfWeekCopyWith<$Res>(_self.open, (value) {
    return _then(_self.copyWith(open: value));
  });
}/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfWeekCopyWith<$Res>? get close {
    if (_self.close == null) {
    return null;
  }

  return $TimeOfWeekCopyWith<$Res>(_self.close!, (value) {
    return _then(_self.copyWith(close: value));
  });
}
}


/// Adds pattern-matching-related methods to [Period].
extension PeriodPatterns on Period {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Period value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Period() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Period value)  $default,){
final _that = this;
switch (_that) {
case _Period():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Period value)?  $default,){
final _that = this;
switch (_that) {
case _Period() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TimeOfWeek open,  TimeOfWeek? close)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Period() when $default != null:
return $default(_that.open,_that.close);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TimeOfWeek open,  TimeOfWeek? close)  $default,) {final _that = this;
switch (_that) {
case _Period():
return $default(_that.open,_that.close);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TimeOfWeek open,  TimeOfWeek? close)?  $default,) {final _that = this;
switch (_that) {
case _Period() when $default != null:
return $default(_that.open,_that.close);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Period implements Period {
  const _Period({required this.open, required this.close});
  factory _Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

@override final  TimeOfWeek open;
@override final  TimeOfWeek? close;

/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodCopyWith<_Period> get copyWith => __$PeriodCopyWithImpl<_Period>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeriodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Period&&(identical(other.open, open) || other.open == open)&&(identical(other.close, close) || other.close == close));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,open,close);

@override
String toString() {
  return 'Period(open: $open, close: $close)';
}


}

/// @nodoc
abstract mixin class _$PeriodCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$PeriodCopyWith(_Period value, $Res Function(_Period) _then) = __$PeriodCopyWithImpl;
@override @useResult
$Res call({
 TimeOfWeek open, TimeOfWeek? close
});


@override $TimeOfWeekCopyWith<$Res> get open;@override $TimeOfWeekCopyWith<$Res>? get close;

}
/// @nodoc
class __$PeriodCopyWithImpl<$Res>
    implements _$PeriodCopyWith<$Res> {
  __$PeriodCopyWithImpl(this._self, this._then);

  final _Period _self;
  final $Res Function(_Period) _then;

/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? open = null,Object? close = freezed,}) {
  return _then(_Period(
open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as TimeOfWeek,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as TimeOfWeek?,
  ));
}

/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfWeekCopyWith<$Res> get open {
  
  return $TimeOfWeekCopyWith<$Res>(_self.open, (value) {
    return _then(_self.copyWith(open: value));
  });
}/// Create a copy of Period
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfWeekCopyWith<$Res>? get close {
    if (_self.close == null) {
    return null;
  }

  return $TimeOfWeekCopyWith<$Res>(_self.close!, (value) {
    return _then(_self.copyWith(close: value));
  });
}
}

// dart format on
