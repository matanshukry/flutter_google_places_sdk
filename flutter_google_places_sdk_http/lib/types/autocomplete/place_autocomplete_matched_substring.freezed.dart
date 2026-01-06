// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_matched_substring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceAutocompleteMatchedSubstring {

/// Length of the matched substring in the prediction result text.
 int get length;/// Start location of the matched substring in the prediction result text.
 int get offset;
/// Create a copy of PlaceAutocompleteMatchedSubstring
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceAutocompleteMatchedSubstringCopyWith<PlaceAutocompleteMatchedSubstring> get copyWith => _$PlaceAutocompleteMatchedSubstringCopyWithImpl<PlaceAutocompleteMatchedSubstring>(this as PlaceAutocompleteMatchedSubstring, _$identity);

  /// Serializes this PlaceAutocompleteMatchedSubstring to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceAutocompleteMatchedSubstring&&(identical(other.length, length) || other.length == length)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,length,offset);

@override
String toString() {
  return 'PlaceAutocompleteMatchedSubstring(length: $length, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $PlaceAutocompleteMatchedSubstringCopyWith<$Res>  {
  factory $PlaceAutocompleteMatchedSubstringCopyWith(PlaceAutocompleteMatchedSubstring value, $Res Function(PlaceAutocompleteMatchedSubstring) _then) = _$PlaceAutocompleteMatchedSubstringCopyWithImpl;
@useResult
$Res call({
 int length, int offset
});




}
/// @nodoc
class _$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res>
    implements $PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  _$PlaceAutocompleteMatchedSubstringCopyWithImpl(this._self, this._then);

  final PlaceAutocompleteMatchedSubstring _self;
  final $Res Function(PlaceAutocompleteMatchedSubstring) _then;

/// Create a copy of PlaceAutocompleteMatchedSubstring
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? length = null,Object? offset = null,}) {
  return _then(_self.copyWith(
length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceAutocompleteMatchedSubstring].
extension PlaceAutocompleteMatchedSubstringPatterns on PlaceAutocompleteMatchedSubstring {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceAutocompleteMatchedSubstring value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceAutocompleteMatchedSubstring() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceAutocompleteMatchedSubstring value)  $default,){
final _that = this;
switch (_that) {
case _PlaceAutocompleteMatchedSubstring():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceAutocompleteMatchedSubstring value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceAutocompleteMatchedSubstring() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int length,  int offset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceAutocompleteMatchedSubstring() when $default != null:
return $default(_that.length,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int length,  int offset)  $default,) {final _that = this;
switch (_that) {
case _PlaceAutocompleteMatchedSubstring():
return $default(_that.length,_that.offset);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int length,  int offset)?  $default,) {final _that = this;
switch (_that) {
case _PlaceAutocompleteMatchedSubstring() when $default != null:
return $default(_that.length,_that.offset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceAutocompleteMatchedSubstring implements PlaceAutocompleteMatchedSubstring {
  const _PlaceAutocompleteMatchedSubstring({required this.length, required this.offset});
  factory _PlaceAutocompleteMatchedSubstring.fromJson(Map<String, dynamic> json) => _$PlaceAutocompleteMatchedSubstringFromJson(json);

/// Length of the matched substring in the prediction result text.
@override final  int length;
/// Start location of the matched substring in the prediction result text.
@override final  int offset;

/// Create a copy of PlaceAutocompleteMatchedSubstring
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceAutocompleteMatchedSubstringCopyWith<_PlaceAutocompleteMatchedSubstring> get copyWith => __$PlaceAutocompleteMatchedSubstringCopyWithImpl<_PlaceAutocompleteMatchedSubstring>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceAutocompleteMatchedSubstringToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceAutocompleteMatchedSubstring&&(identical(other.length, length) || other.length == length)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,length,offset);

@override
String toString() {
  return 'PlaceAutocompleteMatchedSubstring(length: $length, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$PlaceAutocompleteMatchedSubstringCopyWith<$Res> implements $PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  factory _$PlaceAutocompleteMatchedSubstringCopyWith(_PlaceAutocompleteMatchedSubstring value, $Res Function(_PlaceAutocompleteMatchedSubstring) _then) = __$PlaceAutocompleteMatchedSubstringCopyWithImpl;
@override @useResult
$Res call({
 int length, int offset
});




}
/// @nodoc
class __$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res>
    implements _$PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  __$PlaceAutocompleteMatchedSubstringCopyWithImpl(this._self, this._then);

  final _PlaceAutocompleteMatchedSubstring _self;
  final $Res Function(_PlaceAutocompleteMatchedSubstring) _then;

/// Create a copy of PlaceAutocompleteMatchedSubstring
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? length = null,Object? offset = null,}) {
  return _then(_PlaceAutocompleteMatchedSubstring(
length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
