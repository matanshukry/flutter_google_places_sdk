// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceAutocompleteTerm _$PlaceAutocompleteTermFromJson(
    Map<String, dynamic> json) {
  return _PlaceAutocompleteTerm.fromJson(json);
}

/// @nodoc
mixin _$PlaceAutocompleteTerm {
  /// Defines the start position of this term in the description, measured in Unicode characters.
  int get offset => throw _privateConstructorUsedError;

  /// The text of the term.
  String get value => throw _privateConstructorUsedError;

  /// Serializes this PlaceAutocompleteTerm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceAutocompleteTerm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceAutocompleteTermCopyWith<PlaceAutocompleteTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceAutocompleteTermCopyWith<$Res> {
  factory $PlaceAutocompleteTermCopyWith(PlaceAutocompleteTerm value,
          $Res Function(PlaceAutocompleteTerm) then) =
      _$PlaceAutocompleteTermCopyWithImpl<$Res, PlaceAutocompleteTerm>;
  @useResult
  $Res call({int offset, String value});
}

/// @nodoc
class _$PlaceAutocompleteTermCopyWithImpl<$Res,
        $Val extends PlaceAutocompleteTerm>
    implements $PlaceAutocompleteTermCopyWith<$Res> {
  _$PlaceAutocompleteTermCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceAutocompleteTerm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceAutocompleteTermImplCopyWith<$Res>
    implements $PlaceAutocompleteTermCopyWith<$Res> {
  factory _$$PlaceAutocompleteTermImplCopyWith(
          _$PlaceAutocompleteTermImpl value,
          $Res Function(_$PlaceAutocompleteTermImpl) then) =
      __$$PlaceAutocompleteTermImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, String value});
}

/// @nodoc
class __$$PlaceAutocompleteTermImplCopyWithImpl<$Res>
    extends _$PlaceAutocompleteTermCopyWithImpl<$Res,
        _$PlaceAutocompleteTermImpl>
    implements _$$PlaceAutocompleteTermImplCopyWith<$Res> {
  __$$PlaceAutocompleteTermImplCopyWithImpl(_$PlaceAutocompleteTermImpl _value,
      $Res Function(_$PlaceAutocompleteTermImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceAutocompleteTerm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? value = null,
  }) {
    return _then(_$PlaceAutocompleteTermImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceAutocompleteTermImpl implements _PlaceAutocompleteTerm {
  const _$PlaceAutocompleteTermImpl(
      {required this.offset, required this.value});

  factory _$PlaceAutocompleteTermImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceAutocompleteTermImplFromJson(json);

  /// Defines the start position of this term in the description, measured in Unicode characters.
  @override
  final int offset;

  /// The text of the term.
  @override
  final String value;

  @override
  String toString() {
    return 'PlaceAutocompleteTerm(offset: $offset, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceAutocompleteTermImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offset, value);

  /// Create a copy of PlaceAutocompleteTerm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceAutocompleteTermImplCopyWith<_$PlaceAutocompleteTermImpl>
      get copyWith => __$$PlaceAutocompleteTermImplCopyWithImpl<
          _$PlaceAutocompleteTermImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceAutocompleteTermImplToJson(
      this,
    );
  }
}

abstract class _PlaceAutocompleteTerm implements PlaceAutocompleteTerm {
  const factory _PlaceAutocompleteTerm(
      {required final int offset,
      required final String value}) = _$PlaceAutocompleteTermImpl;

  factory _PlaceAutocompleteTerm.fromJson(Map<String, dynamic> json) =
      _$PlaceAutocompleteTermImpl.fromJson;

  /// Defines the start position of this term in the description, measured in Unicode characters.
  @override
  int get offset;

  /// The text of the term.
  @override
  String get value;

  /// Create a copy of PlaceAutocompleteTerm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceAutocompleteTermImplCopyWith<_$PlaceAutocompleteTermImpl>
      get copyWith => throw _privateConstructorUsedError;
}
