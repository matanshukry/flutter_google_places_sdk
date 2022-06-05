// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_autocomplete_structured_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceAutocompleteStructuredFormat _$PlaceAutocompleteStructuredFormatFromJson(
    Map<String, dynamic> json) {
  return _PlaceAutocompleteStructuredFormat.fromJson(json);
}

/// @nodoc
mixin _$PlaceAutocompleteStructuredFormat {
  /// Contains the main text of a prediction, usually the name of the place.
  String get main_text => throw _privateConstructorUsedError;

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring> get main_text_matched_substrings =>
      throw _privateConstructorUsedError;

  /// Contains the secondary text of a prediction, usually the location of the place.
  String get secondary_text => throw _privateConstructorUsedError;

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring>?
      get secondary_text_matched_substrings =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceAutocompleteStructuredFormatCopyWith<PlaceAutocompleteStructuredFormat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  factory $PlaceAutocompleteStructuredFormatCopyWith(
          PlaceAutocompleteStructuredFormat value,
          $Res Function(PlaceAutocompleteStructuredFormat) then) =
      _$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res>;
  $Res call(
      {String main_text,
      List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings,
      String secondary_text,
      List<PlaceAutocompleteMatchedSubstring>?
          secondary_text_matched_substrings});
}

/// @nodoc
class _$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res>
    implements $PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  _$PlaceAutocompleteStructuredFormatCopyWithImpl(this._value, this._then);

  final PlaceAutocompleteStructuredFormat _value;
  // ignore: unused_field
  final $Res Function(PlaceAutocompleteStructuredFormat) _then;

  @override
  $Res call({
    Object? main_text = freezed,
    Object? main_text_matched_substrings = freezed,
    Object? secondary_text = freezed,
    Object? secondary_text_matched_substrings = freezed,
  }) {
    return _then(_value.copyWith(
      main_text: main_text == freezed
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String,
      main_text_matched_substrings: main_text_matched_substrings == freezed
          ? _value.main_text_matched_substrings
          : main_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      secondary_text: secondary_text == freezed
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String,
      secondary_text_matched_substrings: secondary_text_matched_substrings ==
              freezed
          ? _value.secondary_text_matched_substrings
          : secondary_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceAutocompleteStructuredFormatCopyWith<$Res>
    implements $PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  factory _$$_PlaceAutocompleteStructuredFormatCopyWith(
          _$_PlaceAutocompleteStructuredFormat value,
          $Res Function(_$_PlaceAutocompleteStructuredFormat) then) =
      __$$_PlaceAutocompleteStructuredFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String main_text,
      List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings,
      String secondary_text,
      List<PlaceAutocompleteMatchedSubstring>?
          secondary_text_matched_substrings});
}

/// @nodoc
class __$$_PlaceAutocompleteStructuredFormatCopyWithImpl<$Res>
    extends _$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res>
    implements _$$_PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  __$$_PlaceAutocompleteStructuredFormatCopyWithImpl(
      _$_PlaceAutocompleteStructuredFormat _value,
      $Res Function(_$_PlaceAutocompleteStructuredFormat) _then)
      : super(_value, (v) => _then(v as _$_PlaceAutocompleteStructuredFormat));

  @override
  _$_PlaceAutocompleteStructuredFormat get _value =>
      super._value as _$_PlaceAutocompleteStructuredFormat;

  @override
  $Res call({
    Object? main_text = freezed,
    Object? main_text_matched_substrings = freezed,
    Object? secondary_text = freezed,
    Object? secondary_text_matched_substrings = freezed,
  }) {
    return _then(_$_PlaceAutocompleteStructuredFormat(
      main_text: main_text == freezed
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String,
      main_text_matched_substrings: main_text_matched_substrings == freezed
          ? _value._main_text_matched_substrings
          : main_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      secondary_text: secondary_text == freezed
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String,
      secondary_text_matched_substrings: secondary_text_matched_substrings ==
              freezed
          ? _value._secondary_text_matched_substrings
          : secondary_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceAutocompleteStructuredFormat
    implements _PlaceAutocompleteStructuredFormat {
  const _$_PlaceAutocompleteStructuredFormat(
      {required this.main_text,
      required final List<PlaceAutocompleteMatchedSubstring>
          main_text_matched_substrings,
      required this.secondary_text,
      final List<PlaceAutocompleteMatchedSubstring>?
          secondary_text_matched_substrings})
      : _main_text_matched_substrings = main_text_matched_substrings,
        _secondary_text_matched_substrings = secondary_text_matched_substrings;

  factory _$_PlaceAutocompleteStructuredFormat.fromJson(
          Map<String, dynamic> json) =>
      _$$_PlaceAutocompleteStructuredFormatFromJson(json);

  /// Contains the main text of a prediction, usually the name of the place.
  @override
  final String main_text;

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  final List<PlaceAutocompleteMatchedSubstring> _main_text_matched_substrings;

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  @override
  List<PlaceAutocompleteMatchedSubstring> get main_text_matched_substrings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_main_text_matched_substrings);
  }

  /// Contains the secondary text of a prediction, usually the location of the place.
  @override
  final String secondary_text;

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  final List<PlaceAutocompleteMatchedSubstring>?
      _secondary_text_matched_substrings;

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  @override
  List<PlaceAutocompleteMatchedSubstring>?
      get secondary_text_matched_substrings {
    final value = _secondary_text_matched_substrings;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceAutocompleteStructuredFormat(main_text: $main_text, main_text_matched_substrings: $main_text_matched_substrings, secondary_text: $secondary_text, secondary_text_matched_substrings: $secondary_text_matched_substrings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceAutocompleteStructuredFormat &&
            const DeepCollectionEquality().equals(other.main_text, main_text) &&
            const DeepCollectionEquality().equals(
                other._main_text_matched_substrings,
                _main_text_matched_substrings) &&
            const DeepCollectionEquality()
                .equals(other.secondary_text, secondary_text) &&
            const DeepCollectionEquality().equals(
                other._secondary_text_matched_substrings,
                _secondary_text_matched_substrings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(main_text),
      const DeepCollectionEquality().hash(_main_text_matched_substrings),
      const DeepCollectionEquality().hash(secondary_text),
      const DeepCollectionEquality().hash(_secondary_text_matched_substrings));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceAutocompleteStructuredFormatCopyWith<
          _$_PlaceAutocompleteStructuredFormat>
      get copyWith => __$$_PlaceAutocompleteStructuredFormatCopyWithImpl<
          _$_PlaceAutocompleteStructuredFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceAutocompleteStructuredFormatToJson(this);
  }
}

abstract class _PlaceAutocompleteStructuredFormat
    implements PlaceAutocompleteStructuredFormat {
  const factory _PlaceAutocompleteStructuredFormat(
          {required final String main_text,
          required final List<PlaceAutocompleteMatchedSubstring>
              main_text_matched_substrings,
          required final String secondary_text,
          final List<PlaceAutocompleteMatchedSubstring>?
              secondary_text_matched_substrings}) =
      _$_PlaceAutocompleteStructuredFormat;

  factory _PlaceAutocompleteStructuredFormat.fromJson(
          Map<String, dynamic> json) =
      _$_PlaceAutocompleteStructuredFormat.fromJson;

  @override

  /// Contains the main text of a prediction, usually the name of the place.
  String get main_text => throw _privateConstructorUsedError;
  @override

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring> get main_text_matched_substrings =>
      throw _privateConstructorUsedError;
  @override

  /// Contains the secondary text of a prediction, usually the location of the place.
  String get secondary_text => throw _privateConstructorUsedError;
  @override

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring>?
      get secondary_text_matched_substrings =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceAutocompleteStructuredFormatCopyWith<
          _$_PlaceAutocompleteStructuredFormat>
      get copyWith => throw _privateConstructorUsedError;
}
