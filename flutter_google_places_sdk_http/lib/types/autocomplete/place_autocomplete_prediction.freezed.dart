// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PlaceAutocompletePrediction _$PlaceAutocompletePredictionFromJson(
  Map<String, dynamic> json
) {
    return _PlacesAutocompletePrediction.fromJson(
      json
    );
}

/// @nodoc
mixin _$PlaceAutocompletePrediction {

/// Contains the human-readable name for the returned result.
/// For establishment results, this is usually the business name.
/// This content is meant to be read as-is. Do not programmatically
/// parse the formatted address.
 String get description;/// A list of substrings that describe the location of the entered term
/// in the prediction result text, so that the term can be highlighted if desired.
 List<PlaceAutocompleteMatchedSubstring> get matched_substrings;/// Provides pre-formatted text that can be shown in your autocomplete results.
/// This content is meant to be read as-is. Do not programmatically parse the formatted address.
 PlaceAutocompleteStructuredFormat get structured_formatting;/// Contains an array of terms identifying each section of the returned
/// description (a section of the description is generally terminated with a comma).
/// Each entry in the array has a value field, containing the text of the term,
/// and an offset field, defining the start position of this term in the description,
/// measured in Unicode characters.
 List<PlaceAutocompleteTerm> get terms;/// The straight-line distance in meters from the origin.
/// This field is only returned for requests made with an origin.
 int? get distance_meters;/// A textual identifier that uniquely identifies a place.
/// To retrieve information about the place, pass this identifier in the
/// placeId field of a Places API request. For more information about
/// place IDs, see the Place IDs overview.
 String? get place_id;/// Contains an array of types that apply to this place.
/// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
/// The array can contain multiple values.
 List<String>? get types;
/// Create a copy of PlaceAutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceAutocompletePredictionCopyWith<PlaceAutocompletePrediction> get copyWith => _$PlaceAutocompletePredictionCopyWithImpl<PlaceAutocompletePrediction>(this as PlaceAutocompletePrediction, _$identity);

  /// Serializes this PlaceAutocompletePrediction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceAutocompletePrediction&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.matched_substrings, matched_substrings)&&(identical(other.structured_formatting, structured_formatting) || other.structured_formatting == structured_formatting)&&const DeepCollectionEquality().equals(other.terms, terms)&&(identical(other.distance_meters, distance_meters) || other.distance_meters == distance_meters)&&(identical(other.place_id, place_id) || other.place_id == place_id)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(matched_substrings),structured_formatting,const DeepCollectionEquality().hash(terms),distance_meters,place_id,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'PlaceAutocompletePrediction(description: $description, matched_substrings: $matched_substrings, structured_formatting: $structured_formatting, terms: $terms, distance_meters: $distance_meters, place_id: $place_id, types: $types)';
}


}

/// @nodoc
abstract mixin class $PlaceAutocompletePredictionCopyWith<$Res>  {
  factory $PlaceAutocompletePredictionCopyWith(PlaceAutocompletePrediction value, $Res Function(PlaceAutocompletePrediction) _then) = _$PlaceAutocompletePredictionCopyWithImpl;
@useResult
$Res call({
 String description, List<PlaceAutocompleteMatchedSubstring> matched_substrings, PlaceAutocompleteStructuredFormat structured_formatting, List<PlaceAutocompleteTerm> terms, int? distance_meters, String? place_id, List<String>? types
});


$PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting;

}
/// @nodoc
class _$PlaceAutocompletePredictionCopyWithImpl<$Res>
    implements $PlaceAutocompletePredictionCopyWith<$Res> {
  _$PlaceAutocompletePredictionCopyWithImpl(this._self, this._then);

  final PlaceAutocompletePrediction _self;
  final $Res Function(PlaceAutocompletePrediction) _then;

/// Create a copy of PlaceAutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? matched_substrings = null,Object? structured_formatting = null,Object? terms = null,Object? distance_meters = freezed,Object? place_id = freezed,Object? types = freezed,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matched_substrings: null == matched_substrings ? _self.matched_substrings : matched_substrings // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteMatchedSubstring>,structured_formatting: null == structured_formatting ? _self.structured_formatting : structured_formatting // ignore: cast_nullable_to_non_nullable
as PlaceAutocompleteStructuredFormat,terms: null == terms ? _self.terms : terms // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteTerm>,distance_meters: freezed == distance_meters ? _self.distance_meters : distance_meters // ignore: cast_nullable_to_non_nullable
as int?,place_id: freezed == place_id ? _self.place_id : place_id // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of PlaceAutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting {
  
  return $PlaceAutocompleteStructuredFormatCopyWith<$Res>(_self.structured_formatting, (value) {
    return _then(_self.copyWith(structured_formatting: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlaceAutocompletePrediction].
extension PlaceAutocompletePredictionPatterns on PlaceAutocompletePrediction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacesAutocompletePrediction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacesAutocompletePrediction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacesAutocompletePrediction value)  $default,){
final _that = this;
switch (_that) {
case _PlacesAutocompletePrediction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacesAutocompletePrediction value)?  $default,){
final _that = this;
switch (_that) {
case _PlacesAutocompletePrediction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  List<PlaceAutocompleteMatchedSubstring> matched_substrings,  PlaceAutocompleteStructuredFormat structured_formatting,  List<PlaceAutocompleteTerm> terms,  int? distance_meters,  String? place_id,  List<String>? types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacesAutocompletePrediction() when $default != null:
return $default(_that.description,_that.matched_substrings,_that.structured_formatting,_that.terms,_that.distance_meters,_that.place_id,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  List<PlaceAutocompleteMatchedSubstring> matched_substrings,  PlaceAutocompleteStructuredFormat structured_formatting,  List<PlaceAutocompleteTerm> terms,  int? distance_meters,  String? place_id,  List<String>? types)  $default,) {final _that = this;
switch (_that) {
case _PlacesAutocompletePrediction():
return $default(_that.description,_that.matched_substrings,_that.structured_formatting,_that.terms,_that.distance_meters,_that.place_id,_that.types);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  List<PlaceAutocompleteMatchedSubstring> matched_substrings,  PlaceAutocompleteStructuredFormat structured_formatting,  List<PlaceAutocompleteTerm> terms,  int? distance_meters,  String? place_id,  List<String>? types)?  $default,) {final _that = this;
switch (_that) {
case _PlacesAutocompletePrediction() when $default != null:
return $default(_that.description,_that.matched_substrings,_that.structured_formatting,_that.terms,_that.distance_meters,_that.place_id,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacesAutocompletePrediction extends PlaceAutocompletePrediction {
  const _PlacesAutocompletePrediction({required this.description, required final  List<PlaceAutocompleteMatchedSubstring> matched_substrings, required this.structured_formatting, required final  List<PlaceAutocompleteTerm> terms, this.distance_meters, this.place_id, final  List<String>? types}): _matched_substrings = matched_substrings,_terms = terms,_types = types,super._();
  factory _PlacesAutocompletePrediction.fromJson(Map<String, dynamic> json) => _$PlacesAutocompletePredictionFromJson(json);

/// Contains the human-readable name for the returned result.
/// For establishment results, this is usually the business name.
/// This content is meant to be read as-is. Do not programmatically
/// parse the formatted address.
@override final  String description;
/// A list of substrings that describe the location of the entered term
/// in the prediction result text, so that the term can be highlighted if desired.
 final  List<PlaceAutocompleteMatchedSubstring> _matched_substrings;
/// A list of substrings that describe the location of the entered term
/// in the prediction result text, so that the term can be highlighted if desired.
@override List<PlaceAutocompleteMatchedSubstring> get matched_substrings {
  if (_matched_substrings is EqualUnmodifiableListView) return _matched_substrings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matched_substrings);
}

/// Provides pre-formatted text that can be shown in your autocomplete results.
/// This content is meant to be read as-is. Do not programmatically parse the formatted address.
@override final  PlaceAutocompleteStructuredFormat structured_formatting;
/// Contains an array of terms identifying each section of the returned
/// description (a section of the description is generally terminated with a comma).
/// Each entry in the array has a value field, containing the text of the term,
/// and an offset field, defining the start position of this term in the description,
/// measured in Unicode characters.
 final  List<PlaceAutocompleteTerm> _terms;
/// Contains an array of terms identifying each section of the returned
/// description (a section of the description is generally terminated with a comma).
/// Each entry in the array has a value field, containing the text of the term,
/// and an offset field, defining the start position of this term in the description,
/// measured in Unicode characters.
@override List<PlaceAutocompleteTerm> get terms {
  if (_terms is EqualUnmodifiableListView) return _terms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_terms);
}

/// The straight-line distance in meters from the origin.
/// This field is only returned for requests made with an origin.
@override final  int? distance_meters;
/// A textual identifier that uniquely identifies a place.
/// To retrieve information about the place, pass this identifier in the
/// placeId field of a Places API request. For more information about
/// place IDs, see the Place IDs overview.
@override final  String? place_id;
/// Contains an array of types that apply to this place.
/// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
/// The array can contain multiple values.
 final  List<String>? _types;
/// Contains an array of types that apply to this place.
/// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
/// The array can contain multiple values.
@override List<String>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PlaceAutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesAutocompletePredictionCopyWith<_PlacesAutocompletePrediction> get copyWith => __$PlacesAutocompletePredictionCopyWithImpl<_PlacesAutocompletePrediction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacesAutocompletePredictionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesAutocompletePrediction&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._matched_substrings, _matched_substrings)&&(identical(other.structured_formatting, structured_formatting) || other.structured_formatting == structured_formatting)&&const DeepCollectionEquality().equals(other._terms, _terms)&&(identical(other.distance_meters, distance_meters) || other.distance_meters == distance_meters)&&(identical(other.place_id, place_id) || other.place_id == place_id)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_matched_substrings),structured_formatting,const DeepCollectionEquality().hash(_terms),distance_meters,place_id,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'PlaceAutocompletePrediction(description: $description, matched_substrings: $matched_substrings, structured_formatting: $structured_formatting, terms: $terms, distance_meters: $distance_meters, place_id: $place_id, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PlacesAutocompletePredictionCopyWith<$Res> implements $PlaceAutocompletePredictionCopyWith<$Res> {
  factory _$PlacesAutocompletePredictionCopyWith(_PlacesAutocompletePrediction value, $Res Function(_PlacesAutocompletePrediction) _then) = __$PlacesAutocompletePredictionCopyWithImpl;
@override @useResult
$Res call({
 String description, List<PlaceAutocompleteMatchedSubstring> matched_substrings, PlaceAutocompleteStructuredFormat structured_formatting, List<PlaceAutocompleteTerm> terms, int? distance_meters, String? place_id, List<String>? types
});


@override $PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting;

}
/// @nodoc
class __$PlacesAutocompletePredictionCopyWithImpl<$Res>
    implements _$PlacesAutocompletePredictionCopyWith<$Res> {
  __$PlacesAutocompletePredictionCopyWithImpl(this._self, this._then);

  final _PlacesAutocompletePrediction _self;
  final $Res Function(_PlacesAutocompletePrediction) _then;

/// Create a copy of PlaceAutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? matched_substrings = null,Object? structured_formatting = null,Object? terms = null,Object? distance_meters = freezed,Object? place_id = freezed,Object? types = freezed,}) {
  return _then(_PlacesAutocompletePrediction(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matched_substrings: null == matched_substrings ? _self._matched_substrings : matched_substrings // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteMatchedSubstring>,structured_formatting: null == structured_formatting ? _self.structured_formatting : structured_formatting // ignore: cast_nullable_to_non_nullable
as PlaceAutocompleteStructuredFormat,terms: null == terms ? _self._terms : terms // ignore: cast_nullable_to_non_nullable
as List<PlaceAutocompleteTerm>,distance_meters: freezed == distance_meters ? _self.distance_meters : distance_meters // ignore: cast_nullable_to_non_nullable
as int?,place_id: freezed == place_id ? _self.place_id : place_id // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of PlaceAutocompletePrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting {
  
  return $PlaceAutocompleteStructuredFormatCopyWith<$Res>(_self.structured_formatting, (value) {
    return _then(_self.copyWith(structured_formatting: value));
  });
}
}

// dart format on
