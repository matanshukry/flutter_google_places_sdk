// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circular_bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CircularBounds {

 LatLng get center; double get radius;
/// Create a copy of CircularBounds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CircularBoundsCopyWith<CircularBounds> get copyWith => _$CircularBoundsCopyWithImpl<CircularBounds>(this as CircularBounds, _$identity);

  /// Serializes this CircularBounds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CircularBounds&&(identical(other.center, center) || other.center == center)&&(identical(other.radius, radius) || other.radius == radius));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,center,radius);

@override
String toString() {
  return 'CircularBounds(center: $center, radius: $radius)';
}


}

/// @nodoc
abstract mixin class $CircularBoundsCopyWith<$Res>  {
  factory $CircularBoundsCopyWith(CircularBounds value, $Res Function(CircularBounds) _then) = _$CircularBoundsCopyWithImpl;
@useResult
$Res call({
 LatLng center, double radius
});


$LatLngCopyWith<$Res> get center;

}
/// @nodoc
class _$CircularBoundsCopyWithImpl<$Res>
    implements $CircularBoundsCopyWith<$Res> {
  _$CircularBoundsCopyWithImpl(this._self, this._then);

  final CircularBounds _self;
  final $Res Function(CircularBounds) _then;

/// Create a copy of CircularBounds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? center = null,Object? radius = null,}) {
  return _then(_self.copyWith(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLng,radius: null == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CircularBounds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get center {
  
  return $LatLngCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}


/// Adds pattern-matching-related methods to [CircularBounds].
extension CircularBoundsPatterns on CircularBounds {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CircularBounds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CircularBounds() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CircularBounds value)  $default,){
final _that = this;
switch (_that) {
case _CircularBounds():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CircularBounds value)?  $default,){
final _that = this;
switch (_that) {
case _CircularBounds() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng center,  double radius)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CircularBounds() when $default != null:
return $default(_that.center,_that.radius);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng center,  double radius)  $default,) {final _that = this;
switch (_that) {
case _CircularBounds():
return $default(_that.center,_that.radius);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng center,  double radius)?  $default,) {final _that = this;
switch (_that) {
case _CircularBounds() when $default != null:
return $default(_that.center,_that.radius);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CircularBounds implements CircularBounds {
  const _CircularBounds({required this.center, required this.radius});
  factory _CircularBounds.fromJson(Map<String, dynamic> json) => _$CircularBoundsFromJson(json);

@override final  LatLng center;
@override final  double radius;

/// Create a copy of CircularBounds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CircularBoundsCopyWith<_CircularBounds> get copyWith => __$CircularBoundsCopyWithImpl<_CircularBounds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CircularBoundsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CircularBounds&&(identical(other.center, center) || other.center == center)&&(identical(other.radius, radius) || other.radius == radius));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,center,radius);

@override
String toString() {
  return 'CircularBounds(center: $center, radius: $radius)';
}


}

/// @nodoc
abstract mixin class _$CircularBoundsCopyWith<$Res> implements $CircularBoundsCopyWith<$Res> {
  factory _$CircularBoundsCopyWith(_CircularBounds value, $Res Function(_CircularBounds) _then) = __$CircularBoundsCopyWithImpl;
@override @useResult
$Res call({
 LatLng center, double radius
});


@override $LatLngCopyWith<$Res> get center;

}
/// @nodoc
class __$CircularBoundsCopyWithImpl<$Res>
    implements _$CircularBoundsCopyWith<$Res> {
  __$CircularBoundsCopyWithImpl(this._self, this._then);

  final _CircularBounds _self;
  final $Res Function(_CircularBounds) _then;

/// Create a copy of CircularBounds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? center = null,Object? radius = null,}) {
  return _then(_CircularBounds(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLng,radius: null == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CircularBounds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get center {
  
  return $LatLngCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}

// dart format on
