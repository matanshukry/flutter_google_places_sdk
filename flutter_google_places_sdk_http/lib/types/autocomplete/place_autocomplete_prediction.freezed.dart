// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceAutocompletePrediction _$PlaceAutocompletePredictionFromJson(
    Map<String, dynamic> json) {
  return _PlacesAutocompletePrediction.fromJson(json);
}

/// @nodoc
mixin _$PlaceAutocompletePrediction {
  /// Contains the human-readable name for the returned result.
  /// For establishment results, this is usually the business name.
  /// This content is meant to be read as-is. Do not programmatically
  /// parse the formatted address.
  String get description => throw _privateConstructorUsedError;

  /// A list of substrings that describe the location of the entered term
  /// in the prediction result text, so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring> get matched_substrings =>
      throw _privateConstructorUsedError;

  /// Provides pre-formatted text that can be shown in your autocomplete results.
  /// This content is meant to be read as-is. Do not programmatically parse the formatted address.
  PlaceAutocompleteStructuredFormat get structured_formatting =>
      throw _privateConstructorUsedError;

  /// Contains an array of terms identifying each section of the returned
  /// description (a section of the description is generally terminated with a comma).
  /// Each entry in the array has a value field, containing the text of the term,
  /// and an offset field, defining the start position of this term in the description,
  /// measured in Unicode characters.
  List<PlaceAutocompleteTerm> get terms => throw _privateConstructorUsedError;

  /// The straight-line distance in meters from the origin.
  /// This field is only returned for requests made with an origin.
  int? get distance_meters => throw _privateConstructorUsedError;

  /// A textual identifier that uniquely identifies a place.
  /// To retrieve information about the place, pass this identifier in the
  /// placeId field of a Places API request. For more information about
  /// place IDs, see the Place IDs overview.
  String? get place_id => throw _privateConstructorUsedError;

  /// Contains an array of types that apply to this place.
  /// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
  /// The array can contain multiple values.
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceAutocompletePredictionCopyWith<PlaceAutocompletePrediction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceAutocompletePredictionCopyWith<$Res> {
  factory $PlaceAutocompletePredictionCopyWith(
          PlaceAutocompletePrediction value,
          $Res Function(PlaceAutocompletePrediction) then) =
      _$PlaceAutocompletePredictionCopyWithImpl<$Res,
          PlaceAutocompletePrediction>;
  @useResult
  $Res call(
      {String description,
      List<PlaceAutocompleteMatchedSubstring> matched_substrings,
      PlaceAutocompleteStructuredFormat structured_formatting,
      List<PlaceAutocompleteTerm> terms,
      int? distance_meters,
      String? place_id,
      List<String>? types});

  $PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting;
}

/// @nodoc
class _$PlaceAutocompletePredictionCopyWithImpl<$Res,
        $Val extends PlaceAutocompletePrediction>
    implements $PlaceAutocompletePredictionCopyWith<$Res> {
  _$PlaceAutocompletePredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? matched_substrings = null,
    Object? structured_formatting = null,
    Object? terms = null,
    Object? distance_meters = freezed,
    Object? place_id = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      matched_substrings: null == matched_substrings
          ? _value.matched_substrings
          : matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      structured_formatting: null == structured_formatting
          ? _value.structured_formatting
          : structured_formatting // ignore: cast_nullable_to_non_nullable
              as PlaceAutocompleteStructuredFormat,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteTerm>,
      distance_meters: freezed == distance_meters
          ? _value.distance_meters
          : distance_meters // ignore: cast_nullable_to_non_nullable
              as int?,
      place_id: freezed == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting {
    return $PlaceAutocompleteStructuredFormatCopyWith<$Res>(
        _value.structured_formatting, (value) {
      return _then(_value.copyWith(structured_formatting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlacesAutocompletePredictionImplCopyWith<$Res>
    implements $PlaceAutocompletePredictionCopyWith<$Res> {
  factory _$$PlacesAutocompletePredictionImplCopyWith(
          _$PlacesAutocompletePredictionImpl value,
          $Res Function(_$PlacesAutocompletePredictionImpl) then) =
      __$$PlacesAutocompletePredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      List<PlaceAutocompleteMatchedSubstring> matched_substrings,
      PlaceAutocompleteStructuredFormat structured_formatting,
      List<PlaceAutocompleteTerm> terms,
      int? distance_meters,
      String? place_id,
      List<String>? types});

  @override
  $PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting;
}

/// @nodoc
class __$$PlacesAutocompletePredictionImplCopyWithImpl<$Res>
    extends _$PlaceAutocompletePredictionCopyWithImpl<$Res,
        _$PlacesAutocompletePredictionImpl>
    implements _$$PlacesAutocompletePredictionImplCopyWith<$Res> {
  __$$PlacesAutocompletePredictionImplCopyWithImpl(
      _$PlacesAutocompletePredictionImpl _value,
      $Res Function(_$PlacesAutocompletePredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? matched_substrings = null,
    Object? structured_formatting = null,
    Object? terms = null,
    Object? distance_meters = freezed,
    Object? place_id = freezed,
    Object? types = freezed,
  }) {
    return _then(_$PlacesAutocompletePredictionImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      matched_substrings: null == matched_substrings
          ? _value._matched_substrings
          : matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      structured_formatting: null == structured_formatting
          ? _value.structured_formatting
          : structured_formatting // ignore: cast_nullable_to_non_nullable
              as PlaceAutocompleteStructuredFormat,
      terms: null == terms
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteTerm>,
      distance_meters: freezed == distance_meters
          ? _value.distance_meters
          : distance_meters // ignore: cast_nullable_to_non_nullable
              as int?,
      place_id: freezed == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesAutocompletePredictionImpl extends _PlacesAutocompletePrediction {
  const _$PlacesAutocompletePredictionImpl(
      {required this.description,
      required final List<PlaceAutocompleteMatchedSubstring> matched_substrings,
      required this.structured_formatting,
      required final List<PlaceAutocompleteTerm> terms,
      this.distance_meters,
      this.place_id,
      final List<String>? types})
      : _matched_substrings = matched_substrings,
        _terms = terms,
        _types = types,
        super._();

  factory _$PlacesAutocompletePredictionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlacesAutocompletePredictionImplFromJson(json);

  /// Contains the human-readable name for the returned result.
  /// For establishment results, this is usually the business name.
  /// This content is meant to be read as-is. Do not programmatically
  /// parse the formatted address.
  @override
  final String description;

  /// A list of substrings that describe the location of the entered term
  /// in the prediction result text, so that the term can be highlighted if desired.
  final List<PlaceAutocompleteMatchedSubstring> _matched_substrings;

  /// A list of substrings that describe the location of the entered term
  /// in the prediction result text, so that the term can be highlighted if desired.
  @override
  List<PlaceAutocompleteMatchedSubstring> get matched_substrings {
    if (_matched_substrings is EqualUnmodifiableListView)
      return _matched_substrings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matched_substrings);
  }

  /// Provides pre-formatted text that can be shown in your autocomplete results.
  /// This content is meant to be read as-is. Do not programmatically parse the formatted address.
  @override
  final PlaceAutocompleteStructuredFormat structured_formatting;

  /// Contains an array of terms identifying each section of the returned
  /// description (a section of the description is generally terminated with a comma).
  /// Each entry in the array has a value field, containing the text of the term,
  /// and an offset field, defining the start position of this term in the description,
  /// measured in Unicode characters.
  final List<PlaceAutocompleteTerm> _terms;

  /// Contains an array of terms identifying each section of the returned
  /// description (a section of the description is generally terminated with a comma).
  /// Each entry in the array has a value field, containing the text of the term,
  /// and an offset field, defining the start position of this term in the description,
  /// measured in Unicode characters.
  @override
  List<PlaceAutocompleteTerm> get terms {
    if (_terms is EqualUnmodifiableListView) return _terms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_terms);
  }

  /// The straight-line distance in meters from the origin.
  /// This field is only returned for requests made with an origin.
  @override
  final int? distance_meters;

  /// A textual identifier that uniquely identifies a place.
  /// To retrieve information about the place, pass this identifier in the
  /// placeId field of a Places API request. For more information about
  /// place IDs, see the Place IDs overview.
  @override
  final String? place_id;

  /// Contains an array of types that apply to this place.
  /// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
  /// The array can contain multiple values.
  final List<String>? _types;

  /// Contains an array of types that apply to this place.
  /// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
  /// The array can contain multiple values.
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceAutocompletePrediction(description: $description, matched_substrings: $matched_substrings, structured_formatting: $structured_formatting, terms: $terms, distance_meters: $distance_meters, place_id: $place_id, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesAutocompletePredictionImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._matched_substrings, _matched_substrings) &&
            (identical(other.structured_formatting, structured_formatting) ||
                other.structured_formatting == structured_formatting) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            (identical(other.distance_meters, distance_meters) ||
                other.distance_meters == distance_meters) &&
            (identical(other.place_id, place_id) ||
                other.place_id == place_id) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      const DeepCollectionEquality().hash(_matched_substrings),
      structured_formatting,
      const DeepCollectionEquality().hash(_terms),
      distance_meters,
      place_id,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesAutocompletePredictionImplCopyWith<
          _$PlacesAutocompletePredictionImpl>
      get copyWith => __$$PlacesAutocompletePredictionImplCopyWithImpl<
          _$PlacesAutocompletePredictionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesAutocompletePredictionImplToJson(
      this,
    );
  }
}

abstract class _PlacesAutocompletePrediction
    extends PlaceAutocompletePrediction {
  const factory _PlacesAutocompletePrediction(
      {required final String description,
      required final List<PlaceAutocompleteMatchedSubstring> matched_substrings,
      required final PlaceAutocompleteStructuredFormat structured_formatting,
      required final List<PlaceAutocompleteTerm> terms,
      final int? distance_meters,
      final String? place_id,
      final List<String>? types}) = _$PlacesAutocompletePredictionImpl;
  const _PlacesAutocompletePrediction._() : super._();

  factory _PlacesAutocompletePrediction.fromJson(Map<String, dynamic> json) =
      _$PlacesAutocompletePredictionImpl.fromJson;

  @override

  /// Contains the human-readable name for the returned result.
  /// For establishment results, this is usually the business name.
  /// This content is meant to be read as-is. Do not programmatically
  /// parse the formatted address.
  String get description;
  @override

  /// A list of substrings that describe the location of the entered term
  /// in the prediction result text, so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring> get matched_substrings;
  @override

  /// Provides pre-formatted text that can be shown in your autocomplete results.
  /// This content is meant to be read as-is. Do not programmatically parse the formatted address.
  PlaceAutocompleteStructuredFormat get structured_formatting;
  @override

  /// Contains an array of terms identifying each section of the returned
  /// description (a section of the description is generally terminated with a comma).
  /// Each entry in the array has a value field, containing the text of the term,
  /// and an offset field, defining the start position of this term in the description,
  /// measured in Unicode characters.
  List<PlaceAutocompleteTerm> get terms;
  @override

  /// The straight-line distance in meters from the origin.
  /// This field is only returned for requests made with an origin.
  int? get distance_meters;
  @override

  /// A textual identifier that uniquely identifies a place.
  /// To retrieve information about the place, pass this identifier in the
  /// placeId field of a Places API request. For more information about
  /// place IDs, see the Place IDs overview.
  String? get place_id;
  @override

  /// Contains an array of types that apply to this place.
  /// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
  /// The array can contain multiple values.
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$PlacesAutocompletePredictionImplCopyWith<
          _$PlacesAutocompletePredictionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
