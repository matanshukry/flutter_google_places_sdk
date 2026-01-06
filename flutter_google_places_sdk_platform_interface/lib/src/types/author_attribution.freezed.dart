// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_attribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorAttribution {

/// The name of the author.
 String get name;/// The profile photo URI of the author.
 String get photoUri;/// The URI of the author.
 String get uri;
/// Create a copy of AuthorAttribution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorAttributionCopyWith<AuthorAttribution> get copyWith => _$AuthorAttributionCopyWithImpl<AuthorAttribution>(this as AuthorAttribution, _$identity);

  /// Serializes this AuthorAttribution to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorAttribution&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUri, photoUri) || other.photoUri == photoUri)&&(identical(other.uri, uri) || other.uri == uri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,photoUri,uri);

@override
String toString() {
  return 'AuthorAttribution(name: $name, photoUri: $photoUri, uri: $uri)';
}


}

/// @nodoc
abstract mixin class $AuthorAttributionCopyWith<$Res>  {
  factory $AuthorAttributionCopyWith(AuthorAttribution value, $Res Function(AuthorAttribution) _then) = _$AuthorAttributionCopyWithImpl;
@useResult
$Res call({
 String name, String photoUri, String uri
});




}
/// @nodoc
class _$AuthorAttributionCopyWithImpl<$Res>
    implements $AuthorAttributionCopyWith<$Res> {
  _$AuthorAttributionCopyWithImpl(this._self, this._then);

  final AuthorAttribution _self;
  final $Res Function(AuthorAttribution) _then;

/// Create a copy of AuthorAttribution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? photoUri = null,Object? uri = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUri: null == photoUri ? _self.photoUri : photoUri // ignore: cast_nullable_to_non_nullable
as String,uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorAttribution].
extension AuthorAttributionPatterns on AuthorAttribution {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorAttribution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorAttribution() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorAttribution value)  $default,){
final _that = this;
switch (_that) {
case _AuthorAttribution():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorAttribution value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorAttribution() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String photoUri,  String uri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorAttribution() when $default != null:
return $default(_that.name,_that.photoUri,_that.uri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String photoUri,  String uri)  $default,) {final _that = this;
switch (_that) {
case _AuthorAttribution():
return $default(_that.name,_that.photoUri,_that.uri);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String photoUri,  String uri)?  $default,) {final _that = this;
switch (_that) {
case _AuthorAttribution() when $default != null:
return $default(_that.name,_that.photoUri,_that.uri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorAttribution implements AuthorAttribution {
  const _AuthorAttribution({required this.name, required this.photoUri, required this.uri});
  factory _AuthorAttribution.fromJson(Map<String, dynamic> json) => _$AuthorAttributionFromJson(json);

/// The name of the author.
@override final  String name;
/// The profile photo URI of the author.
@override final  String photoUri;
/// The URI of the author.
@override final  String uri;

/// Create a copy of AuthorAttribution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorAttributionCopyWith<_AuthorAttribution> get copyWith => __$AuthorAttributionCopyWithImpl<_AuthorAttribution>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorAttributionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorAttribution&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUri, photoUri) || other.photoUri == photoUri)&&(identical(other.uri, uri) || other.uri == uri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,photoUri,uri);

@override
String toString() {
  return 'AuthorAttribution(name: $name, photoUri: $photoUri, uri: $uri)';
}


}

/// @nodoc
abstract mixin class _$AuthorAttributionCopyWith<$Res> implements $AuthorAttributionCopyWith<$Res> {
  factory _$AuthorAttributionCopyWith(_AuthorAttribution value, $Res Function(_AuthorAttribution) _then) = __$AuthorAttributionCopyWithImpl;
@override @useResult
$Res call({
 String name, String photoUri, String uri
});




}
/// @nodoc
class __$AuthorAttributionCopyWithImpl<$Res>
    implements _$AuthorAttributionCopyWith<$Res> {
  __$AuthorAttributionCopyWithImpl(this._self, this._then);

  final _AuthorAttribution _self;
  final $Res Function(_AuthorAttribution) _then;

/// Create a copy of AuthorAttribution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? photoUri = null,Object? uri = null,}) {
  return _then(_AuthorAttribution(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUri: null == photoUri ? _self.photoUri : photoUri // ignore: cast_nullable_to_non_nullable
as String,uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
