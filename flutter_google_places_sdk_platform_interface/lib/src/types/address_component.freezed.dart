// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressComponent implements DiagnosticableTreeMixin {

/// Name of the address component, e.g. "Sydney".
 String get name;/// Short name of the address component, e.g. "AU".
 String get shortName;/// Types of the AddressComponent
///
/// For a list of supported types, see [Address Component Types](https://developers.google.com/maps/documentation/geocoding/overview#Types)
 List<String> get types;
/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressComponentCopyWith<AddressComponent> get copyWith => _$AddressComponentCopyWithImpl<AddressComponent>(this as AddressComponent, _$identity);

  /// Serializes this AddressComponent to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddressComponent'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('types', types));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressComponent&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,const DeepCollectionEquality().hash(types));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddressComponent(name: $name, shortName: $shortName, types: $types)';
}


}

/// @nodoc
abstract mixin class $AddressComponentCopyWith<$Res>  {
  factory $AddressComponentCopyWith(AddressComponent value, $Res Function(AddressComponent) _then) = _$AddressComponentCopyWithImpl;
@useResult
$Res call({
 String name, String shortName, List<String> types
});




}
/// @nodoc
class _$AddressComponentCopyWithImpl<$Res>
    implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._self, this._then);

  final AddressComponent _self;
  final $Res Function(AddressComponent) _then;

/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? shortName = null,Object? types = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressComponent].
extension AddressComponentPatterns on AddressComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressComponent value)  $default,){
final _that = this;
switch (_that) {
case _AddressComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressComponent value)?  $default,){
final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String shortName,  List<String> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
return $default(_that.name,_that.shortName,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String shortName,  List<String> types)  $default,) {final _that = this;
switch (_that) {
case _AddressComponent():
return $default(_that.name,_that.shortName,_that.types);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String shortName,  List<String> types)?  $default,) {final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
return $default(_that.name,_that.shortName,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressComponent with DiagnosticableTreeMixin implements AddressComponent {
  const _AddressComponent({required this.name, required this.shortName, required final  List<String> types}): _types = types;
  factory _AddressComponent.fromJson(Map<String, dynamic> json) => _$AddressComponentFromJson(json);

/// Name of the address component, e.g. "Sydney".
@override final  String name;
/// Short name of the address component, e.g. "AU".
@override final  String shortName;
/// Types of the AddressComponent
///
/// For a list of supported types, see [Address Component Types](https://developers.google.com/maps/documentation/geocoding/overview#Types)
 final  List<String> _types;
/// Types of the AddressComponent
///
/// For a list of supported types, see [Address Component Types](https://developers.google.com/maps/documentation/geocoding/overview#Types)
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressComponentCopyWith<_AddressComponent> get copyWith => __$AddressComponentCopyWithImpl<_AddressComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressComponentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddressComponent'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('types', types));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressComponent&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,const DeepCollectionEquality().hash(_types));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddressComponent(name: $name, shortName: $shortName, types: $types)';
}


}

/// @nodoc
abstract mixin class _$AddressComponentCopyWith<$Res> implements $AddressComponentCopyWith<$Res> {
  factory _$AddressComponentCopyWith(_AddressComponent value, $Res Function(_AddressComponent) _then) = __$AddressComponentCopyWithImpl;
@override @useResult
$Res call({
 String name, String shortName, List<String> types
});




}
/// @nodoc
class __$AddressComponentCopyWithImpl<$Res>
    implements _$AddressComponentCopyWith<$Res> {
  __$AddressComponentCopyWithImpl(this._self, this._then);

  final _AddressComponent _self;
  final $Res Function(_AddressComponent) _then;

/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? shortName = null,Object? types = null,}) {
  return _then(_AddressComponent(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
