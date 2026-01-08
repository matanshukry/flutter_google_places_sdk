// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhotoMetadata {

/// Non-empty String used to identify the underlying photo.
 String get photoReference;/// The maximum width in which this photo is available.
 int get width;/// The maximum height in which this photo is available.
 int get height;/// The attributions that must be shown to the user if this photo is displayed.
 String get attributions;
/// Create a copy of PhotoMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoMetadataCopyWith<PhotoMetadata> get copyWith => _$PhotoMetadataCopyWithImpl<PhotoMetadata>(this as PhotoMetadata, _$identity);

  /// Serializes this PhotoMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoMetadata&&(identical(other.photoReference, photoReference) || other.photoReference == photoReference)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.attributions, attributions) || other.attributions == attributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoReference,width,height,attributions);

@override
String toString() {
  return 'PhotoMetadata(photoReference: $photoReference, width: $width, height: $height, attributions: $attributions)';
}


}

/// @nodoc
abstract mixin class $PhotoMetadataCopyWith<$Res>  {
  factory $PhotoMetadataCopyWith(PhotoMetadata value, $Res Function(PhotoMetadata) _then) = _$PhotoMetadataCopyWithImpl;
@useResult
$Res call({
 String photoReference, int width, int height, String attributions
});




}
/// @nodoc
class _$PhotoMetadataCopyWithImpl<$Res>
    implements $PhotoMetadataCopyWith<$Res> {
  _$PhotoMetadataCopyWithImpl(this._self, this._then);

  final PhotoMetadata _self;
  final $Res Function(PhotoMetadata) _then;

/// Create a copy of PhotoMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? photoReference = null,Object? width = null,Object? height = null,Object? attributions = null,}) {
  return _then(_self.copyWith(
photoReference: null == photoReference ? _self.photoReference : photoReference // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,attributions: null == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PhotoMetadata].
extension PhotoMetadataPatterns on PhotoMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhotoMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhotoMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhotoMetadata value)  $default,){
final _that = this;
switch (_that) {
case _PhotoMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhotoMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _PhotoMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String photoReference,  int width,  int height,  String attributions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhotoMetadata() when $default != null:
return $default(_that.photoReference,_that.width,_that.height,_that.attributions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String photoReference,  int width,  int height,  String attributions)  $default,) {final _that = this;
switch (_that) {
case _PhotoMetadata():
return $default(_that.photoReference,_that.width,_that.height,_that.attributions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String photoReference,  int width,  int height,  String attributions)?  $default,) {final _that = this;
switch (_that) {
case _PhotoMetadata() when $default != null:
return $default(_that.photoReference,_that.width,_that.height,_that.attributions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhotoMetadata implements PhotoMetadata {
  const _PhotoMetadata({required this.photoReference, required this.width, required this.height, required this.attributions});
  factory _PhotoMetadata.fromJson(Map<String, dynamic> json) => _$PhotoMetadataFromJson(json);

/// Non-empty String used to identify the underlying photo.
@override final  String photoReference;
/// The maximum width in which this photo is available.
@override final  int width;
/// The maximum height in which this photo is available.
@override final  int height;
/// The attributions that must be shown to the user if this photo is displayed.
@override final  String attributions;

/// Create a copy of PhotoMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoMetadataCopyWith<_PhotoMetadata> get copyWith => __$PhotoMetadataCopyWithImpl<_PhotoMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotoMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotoMetadata&&(identical(other.photoReference, photoReference) || other.photoReference == photoReference)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.attributions, attributions) || other.attributions == attributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoReference,width,height,attributions);

@override
String toString() {
  return 'PhotoMetadata(photoReference: $photoReference, width: $width, height: $height, attributions: $attributions)';
}


}

/// @nodoc
abstract mixin class _$PhotoMetadataCopyWith<$Res> implements $PhotoMetadataCopyWith<$Res> {
  factory _$PhotoMetadataCopyWith(_PhotoMetadata value, $Res Function(_PhotoMetadata) _then) = __$PhotoMetadataCopyWithImpl;
@override @useResult
$Res call({
 String photoReference, int width, int height, String attributions
});




}
/// @nodoc
class __$PhotoMetadataCopyWithImpl<$Res>
    implements _$PhotoMetadataCopyWith<$Res> {
  __$PhotoMetadataCopyWithImpl(this._self, this._then);

  final _PhotoMetadata _self;
  final $Res Function(_PhotoMetadata) _then;

/// Create a copy of PhotoMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? photoReference = null,Object? width = null,Object? height = null,Object? attributions = null,}) {
  return _then(_PhotoMetadata(
photoReference: null == photoReference ? _self.photoReference : photoReference // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,attributions: null == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
