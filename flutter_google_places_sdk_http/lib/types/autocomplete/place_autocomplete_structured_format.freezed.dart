// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_structured_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res,
          PlaceAutocompleteStructuredFormat>;
  @useResult
  $Res call(
      {String main_text,
      List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings,
      String secondary_text,
      List<PlaceAutocompleteMatchedSubstring>?
          secondary_text_matched_substrings});
}

/// @nodoc
class _$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res,
        $Val extends PlaceAutocompleteStructuredFormat>
    implements $PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  _$PlaceAutocompleteStructuredFormatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main_text = null,
    Object? main_text_matched_substrings = null,
    Object? secondary_text = null,
    Object? secondary_text_matched_substrings = freezed,
  }) {
    return _then(_value.copyWith(
      main_text: null == main_text
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String,
      main_text_matched_substrings: null == main_text_matched_substrings
          ? _value.main_text_matched_substrings
          : main_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      secondary_text: null == secondary_text
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String,
      secondary_text_matched_substrings: freezed ==
              secondary_text_matched_substrings
          ? _value.secondary_text_matched_substrings
          : secondary_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceAutocompleteStructuredFormatImplCopyWith<$Res>
    implements $PlaceAutocompleteStructuredFormatCopyWith<$Res> {
  factory _$$PlaceAutocompleteStructuredFormatImplCopyWith(
          _$PlaceAutocompleteStructuredFormatImpl value,
          $Res Function(_$PlaceAutocompleteStructuredFormatImpl) then) =
      __$$PlaceAutocompleteStructuredFormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String main_text,
      List<PlaceAutocompleteMatchedSubstring> main_text_matched_substrings,
      String secondary_text,
      List<PlaceAutocompleteMatchedSubstring>?
          secondary_text_matched_substrings});
}

/// @nodoc
class __$$PlaceAutocompleteStructuredFormatImplCopyWithImpl<$Res>
    extends _$PlaceAutocompleteStructuredFormatCopyWithImpl<$Res,
        _$PlaceAutocompleteStructuredFormatImpl>
    implements _$$PlaceAutocompleteStructuredFormatImplCopyWith<$Res> {
  __$$PlaceAutocompleteStructuredFormatImplCopyWithImpl(
      _$PlaceAutocompleteStructuredFormatImpl _value,
      $Res Function(_$PlaceAutocompleteStructuredFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main_text = null,
    Object? main_text_matched_substrings = null,
    Object? secondary_text = null,
    Object? secondary_text_matched_substrings = freezed,
  }) {
    return _then(_$PlaceAutocompleteStructuredFormatImpl(
      main_text: null == main_text
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String,
      main_text_matched_substrings: null == main_text_matched_substrings
          ? _value._main_text_matched_substrings
          : main_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>,
      secondary_text: null == secondary_text
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String,
      secondary_text_matched_substrings: freezed ==
              secondary_text_matched_substrings
          ? _value._secondary_text_matched_substrings
          : secondary_text_matched_substrings // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompleteMatchedSubstring>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceAutocompleteStructuredFormatImpl
    implements _PlaceAutocompleteStructuredFormat {
  const _$PlaceAutocompleteStructuredFormatImpl(
      {required this.main_text,
      required final List<PlaceAutocompleteMatchedSubstring>
          main_text_matched_substrings,
      required this.secondary_text,
      final List<PlaceAutocompleteMatchedSubstring>?
          secondary_text_matched_substrings})
      : _main_text_matched_substrings = main_text_matched_substrings,
        _secondary_text_matched_substrings = secondary_text_matched_substrings;

  factory _$PlaceAutocompleteStructuredFormatImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlaceAutocompleteStructuredFormatImplFromJson(json);

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
    if (_main_text_matched_substrings is EqualUnmodifiableListView)
      return _main_text_matched_substrings;
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
    if (_secondary_text_matched_substrings is EqualUnmodifiableListView)
      return _secondary_text_matched_substrings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceAutocompleteStructuredFormat(main_text: $main_text, main_text_matched_substrings: $main_text_matched_substrings, secondary_text: $secondary_text, secondary_text_matched_substrings: $secondary_text_matched_substrings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceAutocompleteStructuredFormatImpl &&
            (identical(other.main_text, main_text) ||
                other.main_text == main_text) &&
            const DeepCollectionEquality().equals(
                other._main_text_matched_substrings,
                _main_text_matched_substrings) &&
            (identical(other.secondary_text, secondary_text) ||
                other.secondary_text == secondary_text) &&
            const DeepCollectionEquality().equals(
                other._secondary_text_matched_substrings,
                _secondary_text_matched_substrings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      main_text,
      const DeepCollectionEquality().hash(_main_text_matched_substrings),
      secondary_text,
      const DeepCollectionEquality().hash(_secondary_text_matched_substrings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceAutocompleteStructuredFormatImplCopyWith<
          _$PlaceAutocompleteStructuredFormatImpl>
      get copyWith => __$$PlaceAutocompleteStructuredFormatImplCopyWithImpl<
          _$PlaceAutocompleteStructuredFormatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceAutocompleteStructuredFormatImplToJson(
      this,
    );
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
      _$PlaceAutocompleteStructuredFormatImpl;

  factory _PlaceAutocompleteStructuredFormat.fromJson(
          Map<String, dynamic> json) =
      _$PlaceAutocompleteStructuredFormatImpl.fromJson;

  @override

  /// Contains the main text of a prediction, usually the name of the place.
  String get main_text;
  @override

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring> get main_text_matched_substrings;
  @override

  /// Contains the secondary text of a prediction, usually the location of the place.
  String get secondary_text;
  @override

  /// Contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  List<PlaceAutocompleteMatchedSubstring>?
      get secondary_text_matched_substrings;
  @override
  @JsonKey(ignore: true)
  _$$PlaceAutocompleteStructuredFormatImplCopyWith<
          _$PlaceAutocompleteStructuredFormatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
