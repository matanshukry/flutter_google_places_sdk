// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_by_text_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchByTextResponse {

/// the Place list returned by the response.
 List<Place> get places;
/// Create a copy of SearchByTextResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchByTextResponseCopyWith<SearchByTextResponse> get copyWith => _$SearchByTextResponseCopyWithImpl<SearchByTextResponse>(this as SearchByTextResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchByTextResponse&&const DeepCollectionEquality().equals(other.places, places));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(places));

@override
String toString() {
  return 'SearchByTextResponse(places: $places)';
}


}

/// @nodoc
abstract mixin class $SearchByTextResponseCopyWith<$Res>  {
  factory $SearchByTextResponseCopyWith(SearchByTextResponse value, $Res Function(SearchByTextResponse) _then) = _$SearchByTextResponseCopyWithImpl;
@useResult
$Res call({
 List<Place> places
});




}
/// @nodoc
class _$SearchByTextResponseCopyWithImpl<$Res>
    implements $SearchByTextResponseCopyWith<$Res> {
  _$SearchByTextResponseCopyWithImpl(this._self, this._then);

  final SearchByTextResponse _self;
  final $Res Function(SearchByTextResponse) _then;

/// Create a copy of SearchByTextResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? places = null,}) {
  return _then(_self.copyWith(
places: null == places ? _self.places : places // ignore: cast_nullable_to_non_nullable
as List<Place>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchByTextResponse].
extension SearchByTextResponsePatterns on SearchByTextResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchByTextResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchByTextResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchByTextResponse value)  $default,){
final _that = this;
switch (_that) {
case _SearchByTextResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchByTextResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SearchByTextResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Place> places)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchByTextResponse() when $default != null:
return $default(_that.places);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Place> places)  $default,) {final _that = this;
switch (_that) {
case _SearchByTextResponse():
return $default(_that.places);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Place> places)?  $default,) {final _that = this;
switch (_that) {
case _SearchByTextResponse() when $default != null:
return $default(_that.places);case _:
  return null;

}
}

}

/// @nodoc


class _SearchByTextResponse implements SearchByTextResponse {
  const _SearchByTextResponse(final  List<Place> places): _places = places;
  

/// the Place list returned by the response.
 final  List<Place> _places;
/// the Place list returned by the response.
@override List<Place> get places {
  if (_places is EqualUnmodifiableListView) return _places;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_places);
}


/// Create a copy of SearchByTextResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchByTextResponseCopyWith<_SearchByTextResponse> get copyWith => __$SearchByTextResponseCopyWithImpl<_SearchByTextResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchByTextResponse&&const DeepCollectionEquality().equals(other._places, _places));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_places));

@override
String toString() {
  return 'SearchByTextResponse(places: $places)';
}


}

/// @nodoc
abstract mixin class _$SearchByTextResponseCopyWith<$Res> implements $SearchByTextResponseCopyWith<$Res> {
  factory _$SearchByTextResponseCopyWith(_SearchByTextResponse value, $Res Function(_SearchByTextResponse) _then) = __$SearchByTextResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Place> places
});




}
/// @nodoc
class __$SearchByTextResponseCopyWithImpl<$Res>
    implements _$SearchByTextResponseCopyWith<$Res> {
  __$SearchByTextResponseCopyWithImpl(this._self, this._then);

  final _SearchByTextResponse _self;
  final $Res Function(_SearchByTextResponse) _then;

/// Create a copy of SearchByTextResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? places = null,}) {
  return _then(_SearchByTextResponse(
null == places ? _self._places : places // ignore: cast_nullable_to_non_nullable
as List<Place>,
  ));
}


}

// dart format on
