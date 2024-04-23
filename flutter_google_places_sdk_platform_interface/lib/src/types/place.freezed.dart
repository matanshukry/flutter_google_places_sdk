// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String? get id => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<AddressComponent>? get addressComponents =>
      throw _privateConstructorUsedError;
  BusinessStatus? get businessStatus => throw _privateConstructorUsedError;
  List<String>? get attributions => throw _privateConstructorUsedError;
  LatLng? get latLng => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  OpeningHours? get openingHours => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  List<PhotoMetadata>? get photoMetadatas => throw _privateConstructorUsedError;
  PlusCode? get plusCode => throw _privateConstructorUsedError;
  int? get priceLevel => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<PlaceType>? get types => throw _privateConstructorUsedError;
  int? get userRatingsTotal => throw _privateConstructorUsedError;
  int? get utcOffsetMinutes => throw _privateConstructorUsedError;
  LatLngBounds? get viewport => throw _privateConstructorUsedError;
  Uri? get websiteUri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {String? id,
      String? address,
      List<AddressComponent>? addressComponents,
      BusinessStatus? businessStatus,
      List<String>? attributions,
      LatLng? latLng,
      String? name,
      OpeningHours? openingHours,
      String? phoneNumber,
      List<PhotoMetadata>? photoMetadatas,
      PlusCode? plusCode,
      int? priceLevel,
      double? rating,
      List<PlaceType>? types,
      int? userRatingsTotal,
      int? utcOffsetMinutes,
      LatLngBounds? viewport,
      Uri? websiteUri});

  $LatLngCopyWith<$Res>? get latLng;
  $OpeningHoursCopyWith<$Res>? get openingHours;
  $PlusCodeCopyWith<$Res>? get plusCode;
  $LatLngBoundsCopyWith<$Res>? get viewport;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? addressComponents = freezed,
    Object? businessStatus = freezed,
    Object? attributions = freezed,
    Object? latLng = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? phoneNumber = freezed,
    Object? photoMetadatas = freezed,
    Object? plusCode = freezed,
    Object? priceLevel = freezed,
    Object? rating = freezed,
    Object? types = freezed,
    Object? userRatingsTotal = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? viewport = freezed,
    Object? websiteUri = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressComponents: freezed == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      businessStatus: freezed == businessStatus
          ? _value.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as BusinessStatus?,
      attributions: freezed == attributions
          ? _value.attributions
          : attributions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      latLng: freezed == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      photoMetadatas: freezed == photoMetadatas
          ? _value.photoMetadatas
          : photoMetadatas // ignore: cast_nullable_to_non_nullable
              as List<PhotoMetadata>?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      priceLevel: freezed == priceLevel
          ? _value.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PlaceType>?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      websiteUri: freezed == websiteUri
          ? _value.websiteUri
          : websiteUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res>? get latLng {
    if (_value.latLng == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.latLng!, (value) {
      return _then(_value.copyWith(latLng: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $OpeningHoursCopyWith<$Res>(_value.openingHours!, (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlusCodeCopyWith<$Res>? get plusCode {
    if (_value.plusCode == null) {
      return null;
    }

    return $PlusCodeCopyWith<$Res>(_value.plusCode!, (value) {
      return _then(_value.copyWith(plusCode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLngBoundsCopyWith<$Res>? get viewport {
    if (_value.viewport == null) {
      return null;
    }

    return $LatLngBoundsCopyWith<$Res>(_value.viewport!, (value) {
      return _then(_value.copyWith(viewport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? address,
      List<AddressComponent>? addressComponents,
      BusinessStatus? businessStatus,
      List<String>? attributions,
      LatLng? latLng,
      String? name,
      OpeningHours? openingHours,
      String? phoneNumber,
      List<PhotoMetadata>? photoMetadatas,
      PlusCode? plusCode,
      int? priceLevel,
      double? rating,
      List<PlaceType>? types,
      int? userRatingsTotal,
      int? utcOffsetMinutes,
      LatLngBounds? viewport,
      Uri? websiteUri});

  @override
  $LatLngCopyWith<$Res>? get latLng;
  @override
  $OpeningHoursCopyWith<$Res>? get openingHours;
  @override
  $PlusCodeCopyWith<$Res>? get plusCode;
  @override
  $LatLngBoundsCopyWith<$Res>? get viewport;
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? addressComponents = freezed,
    Object? businessStatus = freezed,
    Object? attributions = freezed,
    Object? latLng = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? phoneNumber = freezed,
    Object? photoMetadatas = freezed,
    Object? plusCode = freezed,
    Object? priceLevel = freezed,
    Object? rating = freezed,
    Object? types = freezed,
    Object? userRatingsTotal = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? viewport = freezed,
    Object? websiteUri = freezed,
  }) {
    return _then(_$PlaceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      addressComponents: freezed == addressComponents
          ? _value._addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      businessStatus: freezed == businessStatus
          ? _value.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as BusinessStatus?,
      attributions: freezed == attributions
          ? _value._attributions
          : attributions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      latLng: freezed == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      photoMetadatas: freezed == photoMetadatas
          ? _value._photoMetadatas
          : photoMetadatas // ignore: cast_nullable_to_non_nullable
              as List<PhotoMetadata>?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      priceLevel: freezed == priceLevel
          ? _value.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PlaceType>?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      websiteUri: freezed == websiteUri
          ? _value.websiteUri
          : websiteUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  const _$PlaceImpl(
      {required this.id,
      required this.address,
      required final List<AddressComponent>? addressComponents,
      required this.businessStatus,
      required final List<String>? attributions,
      required this.latLng,
      required this.name,
      required this.openingHours,
      required this.phoneNumber,
      required final List<PhotoMetadata>? photoMetadatas,
      required this.plusCode,
      required this.priceLevel,
      required this.rating,
      required final List<PlaceType>? types,
      required this.userRatingsTotal,
      required this.utcOffsetMinutes,
      required this.viewport,
      required this.websiteUri})
      : _addressComponents = addressComponents,
        _attributions = attributions,
        _photoMetadatas = photoMetadatas,
        _types = types;

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final String? id;
  @override
  final String? address;
  final List<AddressComponent>? _addressComponents;
  @override
  List<AddressComponent>? get addressComponents {
    final value = _addressComponents;
    if (value == null) return null;
    if (_addressComponents is EqualUnmodifiableListView)
      return _addressComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BusinessStatus? businessStatus;
  final List<String>? _attributions;
  @override
  List<String>? get attributions {
    final value = _attributions;
    if (value == null) return null;
    if (_attributions is EqualUnmodifiableListView) return _attributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LatLng? latLng;
  @override
  final String? name;
  @override
  final OpeningHours? openingHours;
  @override
  final String? phoneNumber;
  final List<PhotoMetadata>? _photoMetadatas;
  @override
  List<PhotoMetadata>? get photoMetadatas {
    final value = _photoMetadatas;
    if (value == null) return null;
    if (_photoMetadatas is EqualUnmodifiableListView) return _photoMetadatas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PlusCode? plusCode;
  @override
  final int? priceLevel;
  @override
  final double? rating;
  final List<PlaceType>? _types;
  @override
  List<PlaceType>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? userRatingsTotal;
  @override
  final int? utcOffsetMinutes;
  @override
  final LatLngBounds? viewport;
  @override
  final Uri? websiteUri;

  @override
  String toString() {
    return 'Place(id: $id, address: $address, addressComponents: $addressComponents, businessStatus: $businessStatus, attributions: $attributions, latLng: $latLng, name: $name, openingHours: $openingHours, phoneNumber: $phoneNumber, photoMetadatas: $photoMetadatas, plusCode: $plusCode, priceLevel: $priceLevel, rating: $rating, types: $types, userRatingsTotal: $userRatingsTotal, utcOffsetMinutes: $utcOffsetMinutes, viewport: $viewport, websiteUri: $websiteUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._addressComponents, _addressComponents) &&
            (identical(other.businessStatus, businessStatus) ||
                other.businessStatus == businessStatus) &&
            const DeepCollectionEquality()
                .equals(other._attributions, _attributions) &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._photoMetadatas, _photoMetadatas) &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.userRatingsTotal, userRatingsTotal) ||
                other.userRatingsTotal == userRatingsTotal) &&
            (identical(other.utcOffsetMinutes, utcOffsetMinutes) ||
                other.utcOffsetMinutes == utcOffsetMinutes) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport) &&
            (identical(other.websiteUri, websiteUri) ||
                other.websiteUri == websiteUri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      address,
      const DeepCollectionEquality().hash(_addressComponents),
      businessStatus,
      const DeepCollectionEquality().hash(_attributions),
      latLng,
      name,
      openingHours,
      phoneNumber,
      const DeepCollectionEquality().hash(_photoMetadatas),
      plusCode,
      priceLevel,
      rating,
      const DeepCollectionEquality().hash(_types),
      userRatingsTotal,
      utcOffsetMinutes,
      viewport,
      websiteUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {required final String? id,
      required final String? address,
      required final List<AddressComponent>? addressComponents,
      required final BusinessStatus? businessStatus,
      required final List<String>? attributions,
      required final LatLng? latLng,
      required final String? name,
      required final OpeningHours? openingHours,
      required final String? phoneNumber,
      required final List<PhotoMetadata>? photoMetadatas,
      required final PlusCode? plusCode,
      required final int? priceLevel,
      required final double? rating,
      required final List<PlaceType>? types,
      required final int? userRatingsTotal,
      required final int? utcOffsetMinutes,
      required final LatLngBounds? viewport,
      required final Uri? websiteUri}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  String? get id;
  @override
  String? get address;
  @override
  List<AddressComponent>? get addressComponents;
  @override
  BusinessStatus? get businessStatus;
  @override
  List<String>? get attributions;
  @override
  LatLng? get latLng;
  @override
  String? get name;
  @override
  OpeningHours? get openingHours;
  @override
  String? get phoneNumber;
  @override
  List<PhotoMetadata>? get photoMetadatas;
  @override
  PlusCode? get plusCode;
  @override
  int? get priceLevel;
  @override
  double? get rating;
  @override
  List<PlaceType>? get types;
  @override
  int? get userRatingsTotal;
  @override
  int? get utcOffsetMinutes;
  @override
  LatLngBounds? get viewport;
  @override
  Uri? get websiteUri;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
