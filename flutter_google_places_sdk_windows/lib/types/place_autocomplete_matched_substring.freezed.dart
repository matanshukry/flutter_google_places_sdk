// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_autocomplete_matched_substring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res>;
  $Res call({int length, int offset});
}

/// @nodoc
class _$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res>
    implements $PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  _$PlaceAutocompleteMatchedSubstringCopyWithImpl(this._value, this._then);

  final PlaceAutocompleteMatchedSubstring _value;
  // ignore: unused_field
  final $Res Function(PlaceAutocompleteMatchedSubstring) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceAutocompleteMatchedSubstringCopyWith<$Res>
    implements $PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  factory _$$_PlaceAutocompleteMatchedSubstringCopyWith(
          _$_PlaceAutocompleteMatchedSubstring value,
          $Res Function(_$_PlaceAutocompleteMatchedSubstring) then) =
      __$$_PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res>;
  @override
  $Res call({int length, int offset});
}

/// @nodoc
class __$$_PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res>
    extends _$PlaceAutocompleteMatchedSubstringCopyWithImpl<$Res>
    implements _$$_PlaceAutocompleteMatchedSubstringCopyWith<$Res> {
  __$$_PlaceAutocompleteMatchedSubstringCopyWithImpl(
      _$_PlaceAutocompleteMatchedSubstring _value,
      $Res Function(_$_PlaceAutocompleteMatchedSubstring) _then)
      : super(_value, (v) => _then(v as _$_PlaceAutocompleteMatchedSubstring));

  @override
  _$_PlaceAutocompleteMatchedSubstring get _value =>
      super._value as _$_PlaceAutocompleteMatchedSubstring;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_PlaceAutocompleteMatchedSubstring(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceAutocompleteMatchedSubstring
    implements _PlaceAutocompleteMatchedSubstring {
  const _$_PlaceAutocompleteMatchedSubstring(
      {required this.length, required this.offset});

  factory _$_PlaceAutocompleteMatchedSubstring.fromJson(
          Map<String, dynamic> json) =>
      _$$_PlaceAutocompleteMatchedSubstringFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceAutocompleteMatchedSubstring &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceAutocompleteMatchedSubstringCopyWith<
          _$_PlaceAutocompleteMatchedSubstring>
      get copyWith => __$$_PlaceAutocompleteMatchedSubstringCopyWithImpl<
          _$_PlaceAutocompleteMatchedSubstring>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceAutocompleteMatchedSubstringToJson(this);
  }
}

abstract class _PlaceAutocompleteMatchedSubstring
    implements PlaceAutocompleteMatchedSubstring {
  const factory _PlaceAutocompleteMatchedSubstring(
      {required final int length,
      required final int offset}) = _$_PlaceAutocompleteMatchedSubstring;

  factory _PlaceAutocompleteMatchedSubstring.fromJson(
          Map<String, dynamic> json) =
      _$_PlaceAutocompleteMatchedSubstring.fromJson;

  @override

  /// Length of the matched substring in the prediction result text.
  int get length => throw _privateConstructorUsedError;
  @override

  /// Start location of the matched substring in the prediction result text.
  int get offset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceAutocompleteMatchedSubstringCopyWith<
          _$_PlaceAutocompleteMatchedSubstring>
      get copyWith => throw _privateConstructorUsedError;
}
