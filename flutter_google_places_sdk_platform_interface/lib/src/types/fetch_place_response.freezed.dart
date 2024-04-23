// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_place_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchPlaceResponse {
  /// the Place returned by the response.
  Place? get place => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchPlaceResponseCopyWith<FetchPlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPlaceResponseCopyWith<$Res> {
  factory $FetchPlaceResponseCopyWith(
          FetchPlaceResponse value, $Res Function(FetchPlaceResponse) then) =
      _$FetchPlaceResponseCopyWithImpl<$Res, FetchPlaceResponse>;
  @useResult
  $Res call({Place? place});

  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$FetchPlaceResponseCopyWithImpl<$Res, $Val extends FetchPlaceResponse>
    implements $FetchPlaceResponseCopyWith<$Res> {
  _$FetchPlaceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchPlacePhotoResponseImageImplCopyWith<$Res>
    implements $FetchPlaceResponseCopyWith<$Res> {
  factory _$$FetchPlacePhotoResponseImageImplCopyWith(
          _$FetchPlacePhotoResponseImageImpl value,
          $Res Function(_$FetchPlacePhotoResponseImageImpl) then) =
      __$$FetchPlacePhotoResponseImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Place? place});

  @override
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$FetchPlacePhotoResponseImageImplCopyWithImpl<$Res>
    extends _$FetchPlaceResponseCopyWithImpl<$Res,
        _$FetchPlacePhotoResponseImageImpl>
    implements _$$FetchPlacePhotoResponseImageImplCopyWith<$Res> {
  __$$FetchPlacePhotoResponseImageImplCopyWithImpl(
      _$FetchPlacePhotoResponseImageImpl _value,
      $Res Function(_$FetchPlacePhotoResponseImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_$FetchPlacePhotoResponseImageImpl(
      freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class _$FetchPlacePhotoResponseImageImpl
    implements _FetchPlacePhotoResponseImage {
  const _$FetchPlacePhotoResponseImageImpl(this.place);

  /// the Place returned by the response.
  @override
  final Place? place;

  @override
  String toString() {
    return 'FetchPlaceResponse(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPlacePhotoResponseImageImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPlacePhotoResponseImageImplCopyWith<
          _$FetchPlacePhotoResponseImageImpl>
      get copyWith => __$$FetchPlacePhotoResponseImageImplCopyWithImpl<
          _$FetchPlacePhotoResponseImageImpl>(this, _$identity);
}

abstract class _FetchPlacePhotoResponseImage implements FetchPlaceResponse {
  const factory _FetchPlacePhotoResponseImage(final Place? place) =
      _$FetchPlacePhotoResponseImageImpl;

  @override

  /// the Place returned by the response.
  Place? get place;
  @override
  @JsonKey(ignore: true)
  _$$FetchPlacePhotoResponseImageImplCopyWith<
          _$FetchPlacePhotoResponseImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
