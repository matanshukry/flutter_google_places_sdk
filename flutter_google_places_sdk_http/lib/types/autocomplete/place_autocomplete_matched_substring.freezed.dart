// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_matched_substring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceAutocompleteMatchedSubstring _$PlaceAutocompleteMatchedSubstringFromJson(
    Map<String, dynamic> json) {
  return _PlaceAutocompleteMatchedSubstring.fromJson(json);
}

/// @nodoc
mixin _$PlaceAutocompleteMatchedSubstring {
  /// Length of the matched substring in the prediction result text.
  int get length => throw _privateConstructorUsedError;

  /// Start location of the matched substring in the prediction result text.
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceAutocompleteMatchedSubstringCopyWith<PlaceAutocompleteMatchedSubstring>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  factory $PlaceAutocompleteMatchedSubstringCopyWith(
          PlaceAutocompleteMatchedSubstring value,
          $Res Function(PlaceAutocompleteMatchedSubstring) then) =
      _$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res,
          PlaceAutocompleteMatchedSubstring>;
  @useResult
  $Res call({int length, int offset});
}

/// @nodoc
class _$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res,
        $Val extends PlaceAutocompleteMatchedSubstring>
    implements $PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  _$PlaceAutocompleteMatchedSubstringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceAutocompleteMatchedSubstringImplCopyWith<$Res>
    implements $PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  factory _$$PlaceAutocompleteMatchedSubstringImplCopyWith(
          _$PlaceAutocompleteMatchedSubstringImpl value,
          $Res Function(_$PlaceAutocompleteMatchedSubstringImpl) then) =
      __$$PlaceAutocompleteMatchedSubstringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int length, int offset});
}

/// @nodoc
class __$$PlaceAutocompleteMatchedSubstringImplCopyWithImpl<$Res>
    extends _$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res,
        _$PlaceAutocompleteMatchedSubstringImpl>
    implements _$$PlaceAutocompleteMatchedSubstringImplCopyWith<$Res> {
  __$$PlaceAutocompleteMatchedSubstringImplCopyWithImpl(
      _$PlaceAutocompleteMatchedSubstringImpl _value,
      $Res Function(_$PlaceAutocompleteMatchedSubstringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? offset = null,
  }) {
    return _then(_$PlaceAutocompleteMatchedSubstringImpl(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceAutocompleteMatchedSubstringImpl
    implements _PlaceAutocompleteMatchedSubstring {
  const _$PlaceAutocompleteMatchedSubstringImpl(
      {required this.length, required this.offset});

  factory _$PlaceAutocompleteMatchedSubstringImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlaceAutocompleteMatchedSubstringImplFromJson(json);

  /// Length of the matched substring in the prediction result text.
  @override
  final int length;

  /// Start location of the matched substring in the prediction result text.
  @override
  final int offset;

  @override
  String toString() {
    return 'PlaceAutocompleteMatchedSubstring(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceAutocompleteMatchedSubstringImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceAutocompleteMatchedSubstringImplCopyWith<
          _$PlaceAutocompleteMatchedSubstringImpl>
      get copyWith => __$$PlaceAutocompleteMatchedSubstringImplCopyWithImpl<
          _$PlaceAutocompleteMatchedSubstringImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceAutocompleteMatchedSubstringImplToJson(
      this,
    );
  }
}

abstract class _PlaceAutocompleteMatchedSubstring
    implements PlaceAutocompleteMatchedSubstring {
  const factory _PlaceAutocompleteMatchedSubstring(
      {required final int length,
      required final int offset}) = _$PlaceAutocompleteMatchedSubstringImpl;

  factory _PlaceAutocompleteMatchedSubstring.fromJson(
          Map<String, dynamic> json) =
      _$PlaceAutocompleteMatchedSubstringImpl.fromJson;

  @override

  /// Length of the matched substring in the prediction result text.
  int get length;
  @override

  /// Start location of the matched substring in the prediction result text.
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$PlaceAutocompleteMatchedSubstringImplCopyWith<
          _$PlaceAutocompleteMatchedSubstringImpl>
      get copyWith => throw _privateConstructorUsedError;
}
