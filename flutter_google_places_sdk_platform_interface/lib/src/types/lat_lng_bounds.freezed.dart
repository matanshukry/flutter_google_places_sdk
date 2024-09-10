// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lat_lng_bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatLngBounds _$LatLngBoundsFromJson(Map<String, dynamic> json) {
  return _LatLngBounds.fromJson(json);
}

/// @nodoc
mixin _$LatLngBounds {
  /// The southwest coordinate of the bounds.
  LatLng get southwest => throw _privateConstructorUsedError;

  /// The northeast coordinate of the bounds.
  LatLng get northeast => throw _privateConstructorUsedError;

  /// Serializes this LatLngBounds to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LatLngBounds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatLngBoundsCopyWith<LatLngBounds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngBoundsCopyWith<$Res> {
  factory $LatLngBoundsCopyWith(
          LatLngBounds value, $Res Function(LatLngBounds) then) =
      _$LatLngBoundsCopyWithImpl<$Res, LatLngBounds>;
  @useResult
  $Res call({LatLng southwest, LatLng northeast});

  $LatLngCopyWith<$Res> get southwest;
  $LatLngCopyWith<$Res> get northeast;
}

/// @nodoc
class _$LatLngBoundsCopyWithImpl<$Res, $Val extends LatLngBounds>
    implements $LatLngBoundsCopyWith<$Res> {
  _$LatLngBoundsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatLngBounds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? southwest = null,
    Object? northeast = null,
  }) {
    return _then(_value.copyWith(
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as LatLng,
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }

  /// Create a copy of LatLngBounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get southwest {
    return $LatLngCopyWith<$Res>(_value.southwest, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }

  /// Create a copy of LatLngBounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get northeast {
    return $LatLngCopyWith<$Res>(_value.northeast, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LatLngBoundsImplCopyWith<$Res>
    implements $LatLngBoundsCopyWith<$Res> {
  factory _$$LatLngBoundsImplCopyWith(
          _$LatLngBoundsImpl value, $Res Function(_$LatLngBoundsImpl) then) =
      __$$LatLngBoundsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng southwest, LatLng northeast});

  @override
  $LatLngCopyWith<$Res> get southwest;
  @override
  $LatLngCopyWith<$Res> get northeast;
}

/// @nodoc
class __$$LatLngBoundsImplCopyWithImpl<$Res>
    extends _$LatLngBoundsCopyWithImpl<$Res, _$LatLngBoundsImpl>
    implements _$$LatLngBoundsImplCopyWith<$Res> {
  __$$LatLngBoundsImplCopyWithImpl(
      _$LatLngBoundsImpl _value, $Res Function(_$LatLngBoundsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatLngBounds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? southwest = null,
    Object? northeast = null,
  }) {
    return _then(_$LatLngBoundsImpl(
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as LatLng,
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatLngBoundsImpl implements _LatLngBounds {
  const _$LatLngBoundsImpl({required this.southwest, required this.northeast});

  factory _$LatLngBoundsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLngBoundsImplFromJson(json);

  /// The southwest coordinate of the bounds.
  @override
  final LatLng southwest;

  /// The northeast coordinate of the bounds.
  @override
  final LatLng northeast;

  @override
  String toString() {
    return 'LatLngBounds(southwest: $southwest, northeast: $northeast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngBoundsImpl &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest) &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, southwest, northeast);

  /// Create a copy of LatLngBounds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngBoundsImplCopyWith<_$LatLngBoundsImpl> get copyWith =>
      __$$LatLngBoundsImplCopyWithImpl<_$LatLngBoundsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLngBoundsImplToJson(
      this,
    );
  }
}

abstract class _LatLngBounds implements LatLngBounds {
  const factory _LatLngBounds(
      {required final LatLng southwest,
      required final LatLng northeast}) = _$LatLngBoundsImpl;

  factory _LatLngBounds.fromJson(Map<String, dynamic> json) =
      _$LatLngBoundsImpl.fromJson;

  /// The southwest coordinate of the bounds.
  @override
  LatLng get southwest;

  /// The northeast coordinate of the bounds.
  @override
  LatLng get northeast;

  /// Create a copy of LatLngBounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LatLngBoundsImplCopyWith<_$LatLngBoundsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
