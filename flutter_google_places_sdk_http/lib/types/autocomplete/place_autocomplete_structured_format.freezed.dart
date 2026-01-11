// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_structured_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceAutocompleteStructuredFormat {

/// Contains the main text of a prediction, usually the name of the place.
 String get main_text;/// Contains an array with offset value and length.
/// These describe the location of the entered term in the prediction result text,
/// so that the term can be highlighted if desired.
 List<PlaceAutocompleteMatchedSubstring> get main_text_matched_substrings;/// Contains the secondary text of a prediction, usually the location of the place.
 String get secondary_text;/// Contains an array with offset value and length.
/// These describe the location of the entered term in the prediction result text,
/// so that the term can be highlighted if desired.
 List<PlaceAutocompleteMatchedSubstring>? get secondary_text_matched_substrings;
/// Create a copy of PlaceAutocompleteStructuredFormat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceAutocompleteStructuredFormatCopyWith<PlaceAutocompleteStructuredFormat> get copyWith => _$PlaceAutocompleteStructuredFormatCopyWithImpl<PlaceAutocompleteStructuredFormat>(this as PlaceAutocompleteStructuredFormat, _$identity);

  /// Serializes this PlaceAutocompleteStructuredFormat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceAutocompleteStructuredFormat&&(identical(other.main_text, main_text) || other.main_text == main_text)&&const DeepCollectionEquality().equals(other.main_text_matched_substrings, main_text_matched_substrings)&&(identical(other.secondary_text, secondary_text) || other.secondary_text == secondary_text)&&const DeepCollectionEquality().equals(other.secondary_text_matched_substrings, secondary_text_matched_substrings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main_text,const DeepCollectionEquality().hash(main_text_matched_substrings),secondary_text,const DeepCollectionEquality().hash(secondary_text_matched_substrings));

@override
String toString() {
  return 'PlaceAutocompleteStructuredFormat(main_text: $main_text, main_text_matched_substrings: $main_text_matched_substrings, secondary_text: $secondary_text, secondary_text_matched_substrings: $secondary_text_matched_substrings)';
}


}

/// @nodoc
abstract mixin class $PlaceAutocompleteStructuredFormatCopyWith<$Res>  {
  factory $PlaceAutocompleteStructuredFormatCopyWith(PlaceAutocompleteStructuredFormat value, $Res Function(PlaceAutocompleteStructuredFormat) _then) = _$PlaceAutocompleteStructuredFormatCopyWithImpl;
@useResult
$Res call({
 String main_text, List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings, String secondary_text, List<PlaceAutocompleteMatchedSubstring>? secondary_text_matched_substrings
});




}
/// @nodoc
class _$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res>
    implements $PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  _$PlaceAutocompleteStructuredFormatCopyWithImpl(this._self, this._then);

  final PlaceAutocompleteStructuredFormat _self;
  final $Res Function(PlaceAutocompleteStructuredFormat) _then;

/// Create a copy of PlaceAutocompleteStructuredFormat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main_text = null,Object? main_text_matched_substrings = null,Object? secondary_text = null,Object? secondary_text_matched_substrings = freezed,}) {
  return _then(_self.copyWith(
main_text: null == main_text ? _self.main_text : main_text // ignore: cast_nullable_to_non_nullable
as String,main_text_matched_substrings: null == main_text_matched_substrings ? _self.main_text_matched_substrings : main_text_matched_substrings // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteMatchedSubstring>,secondary_text: null == secondary_text ? _self.secondary_text : secondary_text // ignore: cast_nullable_to_non_nullable
as String,secondary_text_matched_substrings: freezed == secondary_text_matched_substrings ? _self.secondary_text_matched_substrings : secondary_text_matched_substrings // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteMatchedSubstring>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceAutocompleteStructuredFormat].
extension PlaceAutocompleteStructuredFormatPatterns on PlaceAutocompleteStructuredFormat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceAutocompleteStructuredFormat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceAutocompleteStructuredFormat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceAutocompleteStructuredFormat value)  $default,){
final _that = this;
switch (_that) {
case _PlaceAutocompleteStructuredFormat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceAutocompleteStructuredFormat value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceAutocompleteStructuredFormat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String main_text,  List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings,  String secondary_text,  List<PlaceAutocompleteMatchedSubstring>? secondary_text_matched_substrings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceAutocompleteStructuredFormat() when $default != null:
return $default(_that.main_text,_that.main_text_matched_substrings,_that.secondary_text,_that.secondary_text_matched_substrings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String main_text,  List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings,  String secondary_text,  List<PlaceAutocompleteMatchedSubstring>? secondary_text_matched_substrings)  $default,) {final _that = this;
switch (_that) {
case _PlaceAutocompleteStructuredFormat():
return $default(_that.main_text,_that.main_text_matched_substrings,_that.secondary_text,_that.secondary_text_matched_substrings);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String main_text,  List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings,  String secondary_text,  List<PlaceAutocompleteMatchedSubstring>? secondary_text_matched_substrings)?  $default,) {final _that = this;
switch (_that) {
case _PlaceAutocompleteStructuredFormat() when $default != null:
return $default(_that.main_text,_that.main_text_matched_substrings,_that.secondary_text,_that.secondary_text_matched_substrings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceAutocompleteStructuredFormat implements PlaceAutocompleteStructuredFormat {
  const _PlaceAutocompleteStructuredFormat({required this.main_text, required final  List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings, required this.secondary_text, final  List<PlaceAutocompleteMatchedSubstring>? secondary_text_matched_substrings}): _main_text_matched_substrings = main_text_matched_substrings,_secondary_text_matched_substrings = secondary_text_matched_substrings;
  factory _PlaceAutocompleteStructuredFormat.fromJson(Map<String, dynamic> json) => _$PlaceAutocompleteStructuredFormatFromJson(json);

/// Contains the main text of a prediction, usually the name of the place.
@override final  String main_text;
/// Contains an array with offset value and length.
/// These describe the location of the entered term in the prediction result text,
/// so that the term can be highlighted if desired.
 final  List<PlaceAutocompleteMatchedSubstring> _main_text_matched_substrings;
/// Contains an array with offset value and length.
/// These describe the location of the entered term in the prediction result text,
/// so that the term can be highlighted if desired.
@override List<PlaceAutocompleteMatchedSubstring> get main_text_matched_substrings {
  if (_main_text_matched_substrings is EqualUnmodifiableListView) return _main_text_matched_substrings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_main_text_matched_substrings);
}

/// Contains the secondary text of a prediction, usually the location of the place.
@override final  String secondary_text;
/// Contains an array with offset value and length.
/// These describe the location of the entered term in the prediction result text,
/// so that the term can be highlighted if desired.
 final  List<PlaceAutocompleteMatchedSubstring>? _secondary_text_matched_substrings;
/// Contains an array with offset value and length.
/// These describe the location of the entered term in the prediction result text,
/// so that the term can be highlighted if desired.
@override List<PlaceAutocompleteMatchedSubstring>? get secondary_text_matched_substrings {
  final value = _secondary_text_matched_substrings;
  if (value == null) return null;
  if (_secondary_text_matched_substrings is EqualUnmodifiableListView) return _secondary_text_matched_substrings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PlaceAutocompleteStructuredFormat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceAutocompleteStructuredFormatCopyWith<_PlaceAutocompleteStructuredFormat> get copyWith => __$PlaceAutocompleteStructuredFormatCopyWithImpl<_PlaceAutocompleteStructuredFormat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceAutocompleteStructuredFormatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceAutocompleteStructuredFormat&&(identical(other.main_text, main_text) || other.main_text == main_text)&&const DeepCollectionEquality().equals(other._main_text_matched_substrings, _main_text_matched_substrings)&&(identical(other.secondary_text, secondary_text) || other.secondary_text == secondary_text)&&const DeepCollectionEquality().equals(other._secondary_text_matched_substrings, _secondary_text_matched_substrings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main_text,const DeepCollectionEquality().hash(_main_text_matched_substrings),secondary_text,const DeepCollectionEquality().hash(_secondary_text_matched_substrings));

@override
String toString() {
  return 'PlaceAutocompleteStructuredFormat(main_text: $main_text, main_text_matched_substrings: $main_text_matched_substrings, secondary_text: $secondary_text, secondary_text_matched_substrings: $secondary_text_matched_substrings)';
}


}

/// @nodoc
abstract mixin class _$PlaceAutocompleteStructuredFormatCopyWith<$Res> implements $PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  factory _$PlaceAutocompleteStructuredFormatCopyWith(_PlaceAutocompleteStructuredFormat value, $Res Function(_PlaceAutocompleteStructuredFormat) _then) = __$PlaceAutocompleteStructuredFormatCopyWithImpl;
@override @useResult
$Res call({
 String main_text, List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings, String secondary_text, List<PlaceAutocompleteMatchedSubstring>? secondary_text_matched_substrings
});




}
/// @nodoc
class __$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res>
    implements _$PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  __$PlaceAutocompleteStructuredFormatCopyWithImpl(this._self, this._then);

  final _PlaceAutocompleteStructuredFormat _self;
  final $Res Function(_PlaceAutocompleteStructuredFormat) _then;

/// Create a copy of PlaceAutocompleteStructuredFormat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main_text = null,Object? main_text_matched_substrings = null,Object? secondary_text = null,Object? secondary_text_matched_substrings = freezed,}) {
  return _then(_PlaceAutocompleteStructuredFormat(
main_text: null == main_text ? _self.main_text : main_text // ignore: cast_nullable_to_non_nullable
as String,main_text_matched_substrings: null == main_text_matched_substrings ? _self._main_text_matched_substrings : main_text_matched_substrings // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteMatchedSubstring>,secondary_text: null == secondary_text ? _self.secondary_text : secondary_text // ignore: cast_nullable_to_non_nullable
as String,secondary_text_matched_substrings: freezed == secondary_text_matched_substrings ? _self._secondary_text_matched_substrings : secondary_text_matched_substrings // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteMatchedSubstring>?,
  ));
}


}

// dart format on
