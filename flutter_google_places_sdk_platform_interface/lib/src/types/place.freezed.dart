// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Place {

 String? get id; String? get address; List<AddressComponent>? get addressComponents; BusinessStatus? get businessStatus; List<String>? get attributions; LatLng? get latLng; String? get name; String? get nameLanguageCode; OpeningHours? get openingHours; String? get phoneNumber; List<PhotoMetadata>? get photoMetadatas; PlusCode? get plusCode; int? get priceLevel; double? get rating; List<PlaceType>? get types; int? get userRatingsTotal; int? get utcOffsetMinutes; LatLngBounds? get viewport; Uri? get websiteUri; List<Review>? get reviews;
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCopyWith<Place> get copyWith => _$PlaceCopyWithImpl<Place>(this as Place, _$identity);

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Place&&(identical(other.id, id) || other.id == id)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.addressComponents, addressComponents)&&(identical(other.businessStatus, businessStatus) || other.businessStatus == businessStatus)&&const DeepCollectionEquality().equals(other.attributions, attributions)&&(identical(other.latLng, latLng) || other.latLng == latLng)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameLanguageCode, nameLanguageCode) || other.nameLanguageCode == nameLanguageCode)&&(identical(other.openingHours, openingHours) || other.openingHours == openingHours)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&const DeepCollectionEquality().equals(other.photoMetadatas, photoMetadatas)&&(identical(other.plusCode, plusCode) || other.plusCode == plusCode)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.userRatingsTotal, userRatingsTotal) || other.userRatingsTotal == userRatingsTotal)&&(identical(other.utcOffsetMinutes, utcOffsetMinutes) || other.utcOffsetMinutes == utcOffsetMinutes)&&(identical(other.viewport, viewport) || other.viewport == viewport)&&(identical(other.websiteUri, websiteUri) || other.websiteUri == websiteUri)&&const DeepCollectionEquality().equals(other.reviews, reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,address,const DeepCollectionEquality().hash(addressComponents),businessStatus,const DeepCollectionEquality().hash(attributions),latLng,name,nameLanguageCode,openingHours,phoneNumber,const DeepCollectionEquality().hash(photoMetadatas),plusCode,priceLevel,rating,const DeepCollectionEquality().hash(types),userRatingsTotal,utcOffsetMinutes,viewport,websiteUri,const DeepCollectionEquality().hash(reviews)]);

@override
String toString() {
  return 'Place(id: $id, address: $address, addressComponents: $addressComponents, businessStatus: $businessStatus, attributions: $attributions, latLng: $latLng, name: $name, nameLanguageCode: $nameLanguageCode, openingHours: $openingHours, phoneNumber: $phoneNumber, photoMetadatas: $photoMetadatas, plusCode: $plusCode, priceLevel: $priceLevel, rating: $rating, types: $types, userRatingsTotal: $userRatingsTotal, utcOffsetMinutes: $utcOffsetMinutes, viewport: $viewport, websiteUri: $websiteUri, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class $PlaceCopyWith<$Res>  {
  factory $PlaceCopyWith(Place value, $Res Function(Place) _then) = _$PlaceCopyWithImpl;
@useResult
$Res call({
 String? id, String? address, List<AddressComponent>? addressComponents, BusinessStatus? businessStatus, List<String>? attributions, LatLng? latLng, String? name, String? nameLanguageCode, OpeningHours? openingHours, String? phoneNumber, List<PhotoMetadata>? photoMetadatas, PlusCode? plusCode, int? priceLevel, double? rating, List<PlaceType>? types, int? userRatingsTotal, int? utcOffsetMinutes, LatLngBounds? viewport, Uri? websiteUri, List<Review>? reviews
});


$LatLngCopyWith<$Res>? get latLng;$OpeningHoursCopyWith<$Res>? get openingHours;$PlusCodeCopyWith<$Res>? get plusCode;$LatLngBoundsCopyWith<$Res>? get viewport;

}
/// @nodoc
class _$PlaceCopyWithImpl<$Res>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._self, this._then);

  final Place _self;
  final $Res Function(Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? address = freezed,Object? addressComponents = freezed,Object? businessStatus = freezed,Object? attributions = freezed,Object? latLng = freezed,Object? name = freezed,Object? nameLanguageCode = freezed,Object? openingHours = freezed,Object? phoneNumber = freezed,Object? photoMetadatas = freezed,Object? plusCode = freezed,Object? priceLevel = freezed,Object? rating = freezed,Object? types = freezed,Object? userRatingsTotal = freezed,Object? utcOffsetMinutes = freezed,Object? viewport = freezed,Object? websiteUri = freezed,Object? reviews = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addressComponents: freezed == addressComponents ? _self.addressComponents : addressComponents // ignore: cast_nullable_to_non_nullable
as List<AddressComponent>?,businessStatus: freezed == businessStatus ? _self.businessStatus : businessStatus // ignore: cast_nullable_to_non_nullable
as BusinessStatus?,attributions: freezed == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as List<String>?,latLng: freezed == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameLanguageCode: freezed == nameLanguageCode ? _self.nameLanguageCode : nameLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as OpeningHours?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,photoMetadatas: freezed == photoMetadatas ? _self.photoMetadatas : photoMetadatas // ignore: cast_nullable_to_non_nullable
as List<PhotoMetadata>?,plusCode: freezed == plusCode ? _self.plusCode : plusCode // ignore: cast_nullable_to_non_nullable
as PlusCode?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PlaceType>?,userRatingsTotal: freezed == userRatingsTotal ? _self.userRatingsTotal : userRatingsTotal // ignore: cast_nullable_to_non_nullable
as int?,utcOffsetMinutes: freezed == utcOffsetMinutes ? _self.utcOffsetMinutes : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
as int?,viewport: freezed == viewport ? _self.viewport : viewport // ignore: cast_nullable_to_non_nullable
as LatLngBounds?,websiteUri: freezed == websiteUri ? _self.websiteUri : websiteUri // ignore: cast_nullable_to_non_nullable
as Uri?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>?,
  ));
}
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get latLng {
    if (_self.latLng == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.latLng!, (value) {
    return _then(_self.copyWith(latLng: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
    return null;
  }

  return $OpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
    return _then(_self.copyWith(openingHours: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlusCodeCopyWith<$Res>? get plusCode {
    if (_self.plusCode == null) {
    return null;
  }

  return $PlusCodeCopyWith<$Res>(_self.plusCode!, (value) {
    return _then(_self.copyWith(plusCode: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngBoundsCopyWith<$Res>? get viewport {
    if (_self.viewport == null) {
    return null;
  }

  return $LatLngBoundsCopyWith<$Res>(_self.viewport!, (value) {
    return _then(_self.copyWith(viewport: value));
  });
}
}


/// Adds pattern-matching-related methods to [Place].
extension PlacePatterns on Place {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Place value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Place value)  $default,){
final _that = this;
switch (_that) {
case _Place():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Place value)?  $default,){
final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? address,  List<AddressComponent>? addressComponents,  BusinessStatus? businessStatus,  List<String>? attributions,  LatLng? latLng,  String? name,  String? nameLanguageCode,  OpeningHours? openingHours,  String? phoneNumber,  List<PhotoMetadata>? photoMetadatas,  PlusCode? plusCode,  int? priceLevel,  double? rating,  List<PlaceType>? types,  int? userRatingsTotal,  int? utcOffsetMinutes,  LatLngBounds? viewport,  Uri? websiteUri,  List<Review>? reviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.address,_that.addressComponents,_that.businessStatus,_that.attributions,_that.latLng,_that.name,_that.nameLanguageCode,_that.openingHours,_that.phoneNumber,_that.photoMetadatas,_that.plusCode,_that.priceLevel,_that.rating,_that.types,_that.userRatingsTotal,_that.utcOffsetMinutes,_that.viewport,_that.websiteUri,_that.reviews);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? address,  List<AddressComponent>? addressComponents,  BusinessStatus? businessStatus,  List<String>? attributions,  LatLng? latLng,  String? name,  String? nameLanguageCode,  OpeningHours? openingHours,  String? phoneNumber,  List<PhotoMetadata>? photoMetadatas,  PlusCode? plusCode,  int? priceLevel,  double? rating,  List<PlaceType>? types,  int? userRatingsTotal,  int? utcOffsetMinutes,  LatLngBounds? viewport,  Uri? websiteUri,  List<Review>? reviews)  $default,) {final _that = this;
switch (_that) {
case _Place():
return $default(_that.id,_that.address,_that.addressComponents,_that.businessStatus,_that.attributions,_that.latLng,_that.name,_that.nameLanguageCode,_that.openingHours,_that.phoneNumber,_that.photoMetadatas,_that.plusCode,_that.priceLevel,_that.rating,_that.types,_that.userRatingsTotal,_that.utcOffsetMinutes,_that.viewport,_that.websiteUri,_that.reviews);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? address,  List<AddressComponent>? addressComponents,  BusinessStatus? businessStatus,  List<String>? attributions,  LatLng? latLng,  String? name,  String? nameLanguageCode,  OpeningHours? openingHours,  String? phoneNumber,  List<PhotoMetadata>? photoMetadatas,  PlusCode? plusCode,  int? priceLevel,  double? rating,  List<PlaceType>? types,  int? userRatingsTotal,  int? utcOffsetMinutes,  LatLngBounds? viewport,  Uri? websiteUri,  List<Review>? reviews)?  $default,) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.address,_that.addressComponents,_that.businessStatus,_that.attributions,_that.latLng,_that.name,_that.nameLanguageCode,_that.openingHours,_that.phoneNumber,_that.photoMetadatas,_that.plusCode,_that.priceLevel,_that.rating,_that.types,_that.userRatingsTotal,_that.utcOffsetMinutes,_that.viewport,_that.websiteUri,_that.reviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Place implements Place {
  const _Place({required this.id, required this.address, required final  List<AddressComponent>? addressComponents, required this.businessStatus, required final  List<String>? attributions, required this.latLng, required this.name, required this.nameLanguageCode, required this.openingHours, required this.phoneNumber, required final  List<PhotoMetadata>? photoMetadatas, required this.plusCode, required this.priceLevel, required this.rating, required final  List<PlaceType>? types, required this.userRatingsTotal, required this.utcOffsetMinutes, required this.viewport, required this.websiteUri, required final  List<Review>? reviews}): _addressComponents = addressComponents,_attributions = attributions,_photoMetadatas = photoMetadatas,_types = types,_reviews = reviews;
  factory _Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

@override final  String? id;
@override final  String? address;
 final  List<AddressComponent>? _addressComponents;
@override List<AddressComponent>? get addressComponents {
  final value = _addressComponents;
  if (value == null) return null;
  if (_addressComponents is EqualUnmodifiableListView) return _addressComponents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  BusinessStatus? businessStatus;
 final  List<String>? _attributions;
@override List<String>? get attributions {
  final value = _attributions;
  if (value == null) return null;
  if (_attributions is EqualUnmodifiableListView) return _attributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  LatLng? latLng;
@override final  String? name;
@override final  String? nameLanguageCode;
@override final  OpeningHours? openingHours;
@override final  String? phoneNumber;
 final  List<PhotoMetadata>? _photoMetadatas;
@override List<PhotoMetadata>? get photoMetadatas {
  final value = _photoMetadatas;
  if (value == null) return null;
  if (_photoMetadatas is EqualUnmodifiableListView) return _photoMetadatas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PlusCode? plusCode;
@override final  int? priceLevel;
@override final  double? rating;
 final  List<PlaceType>? _types;
@override List<PlaceType>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? userRatingsTotal;
@override final  int? utcOffsetMinutes;
@override final  LatLngBounds? viewport;
@override final  Uri? websiteUri;
 final  List<Review>? _reviews;
@override List<Review>? get reviews {
  final value = _reviews;
  if (value == null) return null;
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceCopyWith<_Place> get copyWith => __$PlaceCopyWithImpl<_Place>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Place&&(identical(other.id, id) || other.id == id)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._addressComponents, _addressComponents)&&(identical(other.businessStatus, businessStatus) || other.businessStatus == businessStatus)&&const DeepCollectionEquality().equals(other._attributions, _attributions)&&(identical(other.latLng, latLng) || other.latLng == latLng)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameLanguageCode, nameLanguageCode) || other.nameLanguageCode == nameLanguageCode)&&(identical(other.openingHours, openingHours) || other.openingHours == openingHours)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&const DeepCollectionEquality().equals(other._photoMetadatas, _photoMetadatas)&&(identical(other.plusCode, plusCode) || other.plusCode == plusCode)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.userRatingsTotal, userRatingsTotal) || other.userRatingsTotal == userRatingsTotal)&&(identical(other.utcOffsetMinutes, utcOffsetMinutes) || other.utcOffsetMinutes == utcOffsetMinutes)&&(identical(other.viewport, viewport) || other.viewport == viewport)&&(identical(other.websiteUri, websiteUri) || other.websiteUri == websiteUri)&&const DeepCollectionEquality().equals(other._reviews, _reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,address,const DeepCollectionEquality().hash(_addressComponents),businessStatus,const DeepCollectionEquality().hash(_attributions),latLng,name,nameLanguageCode,openingHours,phoneNumber,const DeepCollectionEquality().hash(_photoMetadatas),plusCode,priceLevel,rating,const DeepCollectionEquality().hash(_types),userRatingsTotal,utcOffsetMinutes,viewport,websiteUri,const DeepCollectionEquality().hash(_reviews)]);

@override
String toString() {
  return 'Place(id: $id, address: $address, addressComponents: $addressComponents, businessStatus: $businessStatus, attributions: $attributions, latLng: $latLng, name: $name, nameLanguageCode: $nameLanguageCode, openingHours: $openingHours, phoneNumber: $phoneNumber, photoMetadatas: $photoMetadatas, plusCode: $plusCode, priceLevel: $priceLevel, rating: $rating, types: $types, userRatingsTotal: $userRatingsTotal, utcOffsetMinutes: $utcOffsetMinutes, viewport: $viewport, websiteUri: $websiteUri, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) _then) = __$PlaceCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? address, List<AddressComponent>? addressComponents, BusinessStatus? businessStatus, List<String>? attributions, LatLng? latLng, String? name, String? nameLanguageCode, OpeningHours? openingHours, String? phoneNumber, List<PhotoMetadata>? photoMetadatas, PlusCode? plusCode, int? priceLevel, double? rating, List<PlaceType>? types, int? userRatingsTotal, int? utcOffsetMinutes, LatLngBounds? viewport, Uri? websiteUri, List<Review>? reviews
});


@override $LatLngCopyWith<$Res>? get latLng;@override $OpeningHoursCopyWith<$Res>? get openingHours;@override $PlusCodeCopyWith<$Res>? get plusCode;@override $LatLngBoundsCopyWith<$Res>? get viewport;

}
/// @nodoc
class __$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(this._self, this._then);

  final _Place _self;
  final $Res Function(_Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? address = freezed,Object? addressComponents = freezed,Object? businessStatus = freezed,Object? attributions = freezed,Object? latLng = freezed,Object? name = freezed,Object? nameLanguageCode = freezed,Object? openingHours = freezed,Object? phoneNumber = freezed,Object? photoMetadatas = freezed,Object? plusCode = freezed,Object? priceLevel = freezed,Object? rating = freezed,Object? types = freezed,Object? userRatingsTotal = freezed,Object? utcOffsetMinutes = freezed,Object? viewport = freezed,Object? websiteUri = freezed,Object? reviews = freezed,}) {
  return _then(_Place(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addressComponents: freezed == addressComponents ? _self._addressComponents : addressComponents // ignore: cast_nullable_to_non_nullable
as List<AddressComponent>?,businessStatus: freezed == businessStatus ? _self.businessStatus : businessStatus // ignore: cast_nullable_to_non_nullable
as BusinessStatus?,attributions: freezed == attributions ? _self._attributions : attributions // ignore: cast_nullable_to_non_nullable
as List<String>?,latLng: freezed == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nameLanguageCode: freezed == nameLanguageCode ? _self.nameLanguageCode : nameLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as OpeningHours?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,photoMetadatas: freezed == photoMetadatas ? _self._photoMetadatas : photoMetadatas // ignore: cast_nullable_to_non_nullable
as List<PhotoMetadata>?,plusCode: freezed == plusCode ? _self.plusCode : plusCode // ignore: cast_nullable_to_non_nullable
as PlusCode?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PlaceType>?,userRatingsTotal: freezed == userRatingsTotal ? _self.userRatingsTotal : userRatingsTotal // ignore: cast_nullable_to_non_nullable
as int?,utcOffsetMinutes: freezed == utcOffsetMinutes ? _self.utcOffsetMinutes : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
as int?,viewport: freezed == viewport ? _self.viewport : viewport // ignore: cast_nullable_to_non_nullable
as LatLngBounds?,websiteUri: freezed == websiteUri ? _self.websiteUri : websiteUri // ignore: cast_nullable_to_non_nullable
as Uri?,reviews: freezed == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>?,
  ));
}

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get latLng {
    if (_self.latLng == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.latLng!, (value) {
    return _then(_self.copyWith(latLng: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
    return null;
  }

  return $OpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
    return _then(_self.copyWith(openingHours: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlusCodeCopyWith<$Res>? get plusCode {
    if (_self.plusCode == null) {
    return null;
  }

  return $PlusCodeCopyWith<$Res>(_self.plusCode!, (value) {
    return _then(_self.copyWith(plusCode: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngBoundsCopyWith<$Res>? get viewport {
    if (_self.viewport == null) {
    return null;
  }

  return $LatLngBoundsCopyWith<$Res>(_self.viewport!, (value) {
    return _then(_self.copyWith(viewport: value));
  });
}
}

// dart format on
