// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_place_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FetchPlaceResponse {

/// the Place returned by the response.
 Place? get place;
/// Create a copy of FetchPlaceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchPlaceResponseCopyWith<FetchPlaceResponse> get copyWith => _$FetchPlaceResponseCopyWithImpl<FetchPlaceResponse>(this as FetchPlaceResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchPlaceResponse&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,place);

@override
String toString() {
  return 'FetchPlaceResponse(place: $place)';
}


}

/// @nodoc
abstract mixin class $FetchPlaceResponseCopyWith<$Res>  {
  factory $FetchPlaceResponseCopyWith(FetchPlaceResponse value, $Res Function(FetchPlaceResponse) _then) = _$FetchPlaceResponseCopyWithImpl;
@useResult
$Res call({
 Place? place
});


$PlaceCopyWith<$Res>? get place;

}
/// @nodoc
class _$FetchPlaceResponseCopyWithImpl<$Res>
    implements $FetchPlaceResponseCopyWith<$Res> {
  _$FetchPlaceResponseCopyWithImpl(this._self, this._then);

  final FetchPlaceResponse _self;
  final $Res Function(FetchPlaceResponse) _then;

/// Create a copy of FetchPlaceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? place = freezed,}) {
  return _then(_self.copyWith(
place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  ));
}
/// Create a copy of FetchPlaceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res>? get place {
    if (_self.place == null) {
    return null;
  }

  return $PlaceCopyWith<$Res>(_self.place!, (value) {
    return _then(_self.copyWith(place: value));
  });
}
}


/// Adds pattern-matching-related methods to [FetchPlaceResponse].
extension FetchPlaceResponsePatterns on FetchPlaceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FetchPlacePhotoResponseImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPlacePhotoResponseImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FetchPlacePhotoResponseImage value)  $default,){
final _that = this;
switch (_that) {
case _FetchPlacePhotoResponseImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FetchPlacePhotoResponseImage value)?  $default,){
final _that = this;
switch (_that) {
case _FetchPlacePhotoResponseImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Place? place)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPlacePhotoResponseImage() when $default != null:
return $default(_that.place);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Place? place)  $default,) {final _that = this;
switch (_that) {
case _FetchPlacePhotoResponseImage():
return $default(_that.place);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Place? place)?  $default,) {final _that = this;
switch (_that) {
case _FetchPlacePhotoResponseImage() when $default != null:
return $default(_that.place);case _:
  return null;

}
}

}

/// @nodoc


class _FetchPlacePhotoResponseImage implements FetchPlaceResponse {
  const _FetchPlacePhotoResponseImage(this.place);
  

/// the Place returned by the response.
@override final  Place? place;

/// Create a copy of FetchPlaceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchPlacePhotoResponseImageCopyWith<_FetchPlacePhotoResponseImage> get copyWith => __$FetchPlacePhotoResponseImageCopyWithImpl<_FetchPlacePhotoResponseImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPlacePhotoResponseImage&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,place);

@override
String toString() {
  return 'FetchPlaceResponse(place: $place)';
}


}

/// @nodoc
abstract mixin class _$FetchPlacePhotoResponseImageCopyWith<$Res> implements $FetchPlaceResponseCopyWith<$Res> {
  factory _$FetchPlacePhotoResponseImageCopyWith(_FetchPlacePhotoResponseImage value, $Res Function(_FetchPlacePhotoResponseImage) _then) = __$FetchPlacePhotoResponseImageCopyWithImpl;
@override @useResult
$Res call({
 Place? place
});


@override $PlaceCopyWith<$Res>? get place;

}
/// @nodoc
class __$FetchPlacePhotoResponseImageCopyWithImpl<$Res>
    implements _$FetchPlacePhotoResponseImageCopyWith<$Res> {
  __$FetchPlacePhotoResponseImageCopyWithImpl(this._self, this._then);

  final _FetchPlacePhotoResponseImage _self;
  final $Res Function(_FetchPlacePhotoResponseImage) _then;

/// Create a copy of FetchPlaceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? place = freezed,}) {
  return _then(_FetchPlacePhotoResponseImage(
freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  ));
}

/// Create a copy of FetchPlaceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res>? get place {
    if (_self.place == null) {
    return null;
  }

  return $PlaceCopyWith<$Res>(_self.place!, (value) {
    return _then(_self.copyWith(place: value));
  });
}
}

// dart format on
