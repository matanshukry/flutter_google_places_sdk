// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_photo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FetchPlacePhotoResponse {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchPlacePhotoResponse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FetchPlacePhotoResponse()';
}


}

/// @nodoc
class $FetchPlacePhotoResponseCopyWith<$Res>  {
$FetchPlacePhotoResponseCopyWith(FetchPlacePhotoResponse _, $Res Function(FetchPlacePhotoResponse) __);
}


/// Adds pattern-matching-related methods to [FetchPlacePhotoResponse].
extension FetchPlacePhotoResponsePatterns on FetchPlacePhotoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchPlacePhotoResponseImage value)?  image,TResult Function( FetchPlacePhotoResponseImageUrl value)?  imageUrl,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchPlacePhotoResponseImage() when image != null:
return image(_that);case FetchPlacePhotoResponseImageUrl() when imageUrl != null:
return imageUrl(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchPlacePhotoResponseImage value)  image,required TResult Function( FetchPlacePhotoResponseImageUrl value)  imageUrl,}){
final _that = this;
switch (_that) {
case FetchPlacePhotoResponseImage():
return image(_that);case FetchPlacePhotoResponseImageUrl():
return imageUrl(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchPlacePhotoResponseImage value)?  image,TResult? Function( FetchPlacePhotoResponseImageUrl value)?  imageUrl,}){
final _that = this;
switch (_that) {
case FetchPlacePhotoResponseImage() when image != null:
return image(_that);case FetchPlacePhotoResponseImageUrl() when imageUrl != null:
return imageUrl(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Image image)?  image,TResult Function( String imageUrl)?  imageUrl,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchPlacePhotoResponseImage() when image != null:
return image(_that.image);case FetchPlacePhotoResponseImageUrl() when imageUrl != null:
return imageUrl(_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Image image)  image,required TResult Function( String imageUrl)  imageUrl,}) {final _that = this;
switch (_that) {
case FetchPlacePhotoResponseImage():
return image(_that.image);case FetchPlacePhotoResponseImageUrl():
return imageUrl(_that.imageUrl);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Image image)?  image,TResult? Function( String imageUrl)?  imageUrl,}) {final _that = this;
switch (_that) {
case FetchPlacePhotoResponseImage() when image != null:
return image(_that.image);case FetchPlacePhotoResponseImageUrl() when imageUrl != null:
return imageUrl(_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class FetchPlacePhotoResponseImage implements FetchPlacePhotoResponse {
  const FetchPlacePhotoResponseImage(this.image);
  

 final  Image image;

/// Create a copy of FetchPlacePhotoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchPlacePhotoResponseImageCopyWith<FetchPlacePhotoResponseImage> get copyWith => _$FetchPlacePhotoResponseImageCopyWithImpl<FetchPlacePhotoResponseImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchPlacePhotoResponseImage&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'FetchPlacePhotoResponse.image(image: $image)';
}


}

/// @nodoc
abstract mixin class $FetchPlacePhotoResponseImageCopyWith<$Res> implements $FetchPlacePhotoResponseCopyWith<$Res> {
  factory $FetchPlacePhotoResponseImageCopyWith(FetchPlacePhotoResponseImage value, $Res Function(FetchPlacePhotoResponseImage) _then) = _$FetchPlacePhotoResponseImageCopyWithImpl;
@useResult
$Res call({
 Image image
});




}
/// @nodoc
class _$FetchPlacePhotoResponseImageCopyWithImpl<$Res>
    implements $FetchPlacePhotoResponseImageCopyWith<$Res> {
  _$FetchPlacePhotoResponseImageCopyWithImpl(this._self, this._then);

  final FetchPlacePhotoResponseImage _self;
  final $Res Function(FetchPlacePhotoResponseImage) _then;

/// Create a copy of FetchPlacePhotoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(FetchPlacePhotoResponseImage(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Image,
  ));
}


}

/// @nodoc


class FetchPlacePhotoResponseImageUrl implements FetchPlacePhotoResponse {
  const FetchPlacePhotoResponseImageUrl(this.imageUrl);
  

 final  String imageUrl;

/// Create a copy of FetchPlacePhotoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchPlacePhotoResponseImageUrlCopyWith<FetchPlacePhotoResponseImageUrl> get copyWith => _$FetchPlacePhotoResponseImageUrlCopyWithImpl<FetchPlacePhotoResponseImageUrl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchPlacePhotoResponseImageUrl&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl);

@override
String toString() {
  return 'FetchPlacePhotoResponse.imageUrl(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $FetchPlacePhotoResponseImageUrlCopyWith<$Res> implements $FetchPlacePhotoResponseCopyWith<$Res> {
  factory $FetchPlacePhotoResponseImageUrlCopyWith(FetchPlacePhotoResponseImageUrl value, $Res Function(FetchPlacePhotoResponseImageUrl) _then) = _$FetchPlacePhotoResponseImageUrlCopyWithImpl;
@useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class _$FetchPlacePhotoResponseImageUrlCopyWithImpl<$Res>
    implements $FetchPlacePhotoResponseImageUrlCopyWith<$Res> {
  _$FetchPlacePhotoResponseImageUrlCopyWithImpl(this._self, this._then);

  final FetchPlacePhotoResponseImageUrl _self;
  final $Res Function(FetchPlacePhotoResponseImageUrl) _then;

/// Create a copy of FetchPlacePhotoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,}) {
  return _then(FetchPlacePhotoResponseImageUrl(
null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
