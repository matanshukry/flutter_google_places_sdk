// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_autocomplete_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$PlaceAutocompletePredictionCopyWithImpl<$Res>;
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
class _$PlaceAutocompletePredictionCopyWithImpl<$Res>
    implements $PlaceAutocompletePredictionCopyWith<$Res> {
  _$PlaceAutocompletePredictionCopyWithImpl(this._value, this._then);

  final PlaceAutocompletePrediction _value;
  // ignore: unused_field
  final $Res Function(PlaceAutocompletePrediction) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? matched_substrings = freezed,
    Object? structured_formatting = freezed,
    Object? terms = freezed,
    Object? distance_meters = freezed,
    Object? place_id = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      matched_substrings: matched_substrings == freezed
          ? _value.matched_substrings
          : matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      structured_formatting: structured_formatting == freezed
          ? _value.structured_formatting
          : structured_formatting // ignore: cast_nullable_to_non_nullable
              as PlaceAutocompleteStructuredFormat,
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteTerm>,
      distance_meters: distance_meters == freezed
          ? _value.distance_meters
          : distance_meters // ignore: cast_nullable_to_non_nullable
              as int?,
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $PlaceAutocompleteStructuredFormatCopyWith<$Res> get structured_formatting {
    return $PlaceAutocompleteStructuredFormatCopyWith<$Res>(
        _value.structured_formatting, (value) {
      return _then(_value.copyWith(structured_formatting: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlacesAutocompletePredictionCopyWith<$Res>
    implements $PlaceAutocompletePredictionCopyWith<$Res> {
  factory _$$_PlacesAutocompletePredictionCopyWith(
          _$_PlacesAutocompletePrediction value,
          $Res Function(_$_PlacesAutocompletePrediction) then) =
      __$$_PlacesAutocompletePredictionCopyWithImpl<$Res>;
  @override
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
class __$$_PlacesAutocompletePredictionCopyWithImpl<$Res>
    extends _$PlaceAutocompletePredictionCopyWithImpl<$Res>
    implements _$$_PlacesAutocompletePredictionCopyWith<$Res> {
  __$$_PlacesAutocompletePredictionCopyWithImpl(
      _$_PlacesAutocompletePrediction _value,
      $Res Function(_$_PlacesAutocompletePrediction) _then)
      : super(_value, (v) => _then(v as _$_PlacesAutocompletePrediction));

  @override
  _$_PlacesAutocompletePrediction get _value =>
      super._value as _$_PlacesAutocompletePrediction;

  @override
  $Res call({
    Object? description = freezed,
    Object? matched_substrings = freezed,
    Object? structured_formatting = freezed,
    Object? terms = freezed,
    Object? distance_meters = freezed,
    Object? place_id = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_PlacesAutocompletePrediction(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      matched_substrings: matched_substrings == freezed
          ? _value._matched_substrings
          : matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      structured_formatting: structured_formatting == freezed
          ? _value.structured_formatting
          : structured_formatting // ignore: cast_nullable_to_non_nullable
              as PlaceAutocompleteStructuredFormat,
      terms: terms == freezed
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteTerm>,
      distance_meters: distance_meters == freezed
          ? _value.distance_meters
          : distance_meters // ignore: cast_nullable_to_non_nullable
              as int?,
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesAutocompletePrediction extends _PlacesAutocompletePrediction {
  const _$_PlacesAutocompletePrediction(
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

  factory _$_PlacesAutocompletePrediction.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesAutocompletePredictionFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceAutocompletePrediction(description: $description, matched_substrings: $matched_substrings, structured_formatting: $structured_formatting, terms: $terms, distance_meters: $distance_meters, place_id: $place_id, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesAutocompletePrediction &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._matched_substrings, _matched_substrings) &&
            const DeepCollectionEquality()
                .equals(other.structured_formatting, structured_formatting) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            const DeepCollectionEquality()
                .equals(other.distance_meters, distance_meters) &&
            const DeepCollectionEquality().equals(other.place_id, place_id) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_matched_substrings),
      const DeepCollectionEquality().hash(structured_formatting),
      const DeepCollectionEquality().hash(_terms),
      const DeepCollectionEquality().hash(distance_meters),
      const DeepCollectionEquality().hash(place_id),
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  _$$_PlacesAutocompletePredictionCopyWith<_$_PlacesAutocompletePrediction>
      get copyWith => __$$_PlacesAutocompletePredictionCopyWithImpl<
          _$_PlacesAutocompletePrediction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesAutocompletePredictionToJson(this);
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
      final List<String>? types}) = _$_PlacesAutocompletePrediction;
  const _PlacesAutocompletePrediction._() : super._();

  factory _PlacesAutocompletePrediction.fromJson(Map<String, dynamic> json) =
      _$_PlacesAutocompletePrediction.fromJson;

  @override

  /// Contains the human-readable name for the returned result.
  /// For establishment results, this is usually the business name.
  /// This content is meant to be read as-is. Do not programmatically
  /// parse the formatted address.
  String get description => throw _privateConstructorUsedError;
  @override

  /// A list of substrings that describe the location of the entered term
  /// in the prediction result text, so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring> get matched_substrings =>
      throw _privateConstructorUsedError;
  @override

  /// Provides pre-formatted text that can be shown in your autocomplete results.
  /// This content is meant to be read as-is. Do not programmatically parse the formatted address.
  PlaceAutocompleteStructuredFormat get structured_formatting =>
      throw _privateConstructorUsedError;
  @override

  /// Contains an array of terms identifying each section of the returned
  /// description (a section of the description is generally terminated with a comma).
  /// Each entry in the array has a value field, containing the text of the term,
  /// and an offset field, defining the start position of this term in the description,
  /// measured in Unicode characters.
  List<PlaceAutocompleteTerm> get terms => throw _privateConstructorUsedError;
  @override

  /// The straight-line distance in meters from the origin.
  /// This field is only returned for requests made with an origin.
  int? get distance_meters => throw _privateConstructorUsedError;
  @override

  /// A textual identifier that uniquely identifies a place.
  /// To retrieve information about the place, pass this identifier in the
  /// placeId field of a Places API request. For more information about
  /// place IDs, see the Place IDs overview.
  String? get place_id => throw _privateConstructorUsedError;
  @override

  /// Contains an array of types that apply to this place.
  /// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
  /// The array can contain multiple values.
  List<String>? get types => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesAutocompletePredictionCopyWith<_$_PlacesAutocompletePrediction>
      get copyWith => throw _privateConstructorUsedError;
}
