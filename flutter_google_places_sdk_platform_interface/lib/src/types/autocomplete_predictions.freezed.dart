// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autocomplete_predictions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutocompletePrediction _$AutocompletePredictionFromJson(
    Map<String, dynamic> json) {
  return _AutocompletePrediction.fromJson(json);
}

/// @nodoc
mixin _$AutocompletePrediction {
  /// the straight-line distance between the place being referred to by getPlaceId() and the origin specified in the request.
  int? get distanceMeters => throw _privateConstructorUsedError;

  /// the place ID of the place being referred to by this prediction.
  String get placeId => throw _privateConstructorUsedError;

  /// the list of place types associated with the place referred to by getPlaceId()
  List<PlaceType>? get placeTypes => throw _privateConstructorUsedError;

  /// the primary text of a place.
  String get primaryText => throw _privateConstructorUsedError;

  /// the secondary text of a place.
  String get secondaryText => throw _privateConstructorUsedError;

  /// The full text of a place.
  String get fullText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutocompletePredictionCopyWith<AutocompletePrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompletePredictionCopyWith<$Res> {
  factory $AutocompletePredictionCopyWith(AutocompletePrediction value,
          $Res Function(AutocompletePrediction) then) =
      _$AutocompletePredictionCopyWithImpl<$Res, AutocompletePrediction>;
  @useResult
  $Res call(
      {int? distanceMeters,
      String placeId,
      List<PlaceType>? placeTypes,
      String primaryText,
      String secondaryText,
      String fullText});
}

/// @nodoc
class _$AutocompletePredictionCopyWithImpl<$Res,
        $Val extends AutocompletePrediction>
    implements $AutocompletePredictionCopyWith<$Res> {
  _$AutocompletePredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = freezed,
    Object? placeId = null,
    Object? placeTypes = freezed,
    Object? primaryText = null,
    Object? secondaryText = null,
    Object? fullText = null,
  }) {
    return _then(_value.copyWith(
      distanceMeters: freezed == distanceMeters
          ? _value.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      placeTypes: freezed == placeTypes
          ? _value.placeTypes
          : placeTypes // ignore: cast_nullable_to_non_nullable
              as List<PlaceType>?,
      primaryText: null == primaryText
          ? _value.primaryText
          : primaryText // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryText: null == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String,
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutocompletePredictionImplCopyWith<$Res>
    implements $AutocompletePredictionCopyWith<$Res> {
  factory _$$AutocompletePredictionImplCopyWith(
          _$AutocompletePredictionImpl value,
          $Res Function(_$AutocompletePredictionImpl) then) =
      __$$AutocompletePredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? distanceMeters,
      String placeId,
      List<PlaceType>? placeTypes,
      String primaryText,
      String secondaryText,
      String fullText});
}

/// @nodoc
class __$$AutocompletePredictionImplCopyWithImpl<$Res>
    extends _$AutocompletePredictionCopyWithImpl<$Res,
        _$AutocompletePredictionImpl>
    implements _$$AutocompletePredictionImplCopyWith<$Res> {
  __$$AutocompletePredictionImplCopyWithImpl(
      _$AutocompletePredictionImpl _value,
      $Res Function(_$AutocompletePredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = freezed,
    Object? placeId = null,
    Object? placeTypes = freezed,
    Object? primaryText = null,
    Object? secondaryText = null,
    Object? fullText = null,
  }) {
    return _then(_$AutocompletePredictionImpl(
      distanceMeters: freezed == distanceMeters
          ? _value.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      placeTypes: freezed == placeTypes
          ? _value._placeTypes
          : placeTypes // ignore: cast_nullable_to_non_nullable
              as List<PlaceType>?,
      primaryText: null == primaryText
          ? _value.primaryText
          : primaryText // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryText: null == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String,
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutocompletePredictionImpl implements _AutocompletePrediction {
  const _$AutocompletePredictionImpl(
      {required this.distanceMeters,
      required this.placeId,
      final List<PlaceType>? placeTypes,
      required this.primaryText,
      required this.secondaryText,
      required this.fullText})
      : _placeTypes = placeTypes;

  factory _$AutocompletePredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutocompletePredictionImplFromJson(json);

  /// the straight-line distance between the place being referred to by getPlaceId() and the origin specified in the request.
  @override
  final int? distanceMeters;

  /// the place ID of the place being referred to by this prediction.
  @override
  final String placeId;

  /// the list of place types associated with the place referred to by getPlaceId()
  final List<PlaceType>? _placeTypes;

  /// the list of place types associated with the place referred to by getPlaceId()
  @override
  List<PlaceType>? get placeTypes {
    final value = _placeTypes;
    if (value == null) return null;
    if (_placeTypes is EqualUnmodifiableListView) return _placeTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// the primary text of a place.
  @override
  final String primaryText;

  /// the secondary text of a place.
  @override
  final String secondaryText;

  /// The full text of a place.
  @override
  final String fullText;

  @override
  String toString() {
    return 'AutocompletePrediction(distanceMeters: $distanceMeters, placeId: $placeId, placeTypes: $placeTypes, primaryText: $primaryText, secondaryText: $secondaryText, fullText: $fullText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompletePredictionImpl &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            const DeepCollectionEquality()
                .equals(other._placeTypes, _placeTypes) &&
            (identical(other.primaryText, primaryText) ||
                other.primaryText == primaryText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText) &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      distanceMeters,
      placeId,
      const DeepCollectionEquality().hash(_placeTypes),
      primaryText,
      secondaryText,
      fullText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompletePredictionImplCopyWith<_$AutocompletePredictionImpl>
      get copyWith => __$$AutocompletePredictionImplCopyWithImpl<
          _$AutocompletePredictionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutocompletePredictionImplToJson(
      this,
    );
  }
}

abstract class _AutocompletePrediction implements AutocompletePrediction {
  const factory _AutocompletePrediction(
      {required final int? distanceMeters,
      required final String placeId,
      final List<PlaceType>? placeTypes,
      required final String primaryText,
      required final String secondaryText,
      required final String fullText}) = _$AutocompletePredictionImpl;

  factory _AutocompletePrediction.fromJson(Map<String, dynamic> json) =
      _$AutocompletePredictionImpl.fromJson;

  @override

  /// the straight-line distance between the place being referred to by getPlaceId() and the origin specified in the request.
  int? get distanceMeters;
  @override

  /// the place ID of the place being referred to by this prediction.
  String get placeId;
  @override

  /// the list of place types associated with the place referred to by getPlaceId()
  List<PlaceType>? get placeTypes;
  @override

  /// the primary text of a place.
  String get primaryText;
  @override

  /// the secondary text of a place.
  String get secondaryText;
  @override

  /// The full text of a place.
  String get fullText;
  @override
  @JsonKey(ignore: true)
  _$$AutocompletePredictionImplCopyWith<_$AutocompletePredictionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
