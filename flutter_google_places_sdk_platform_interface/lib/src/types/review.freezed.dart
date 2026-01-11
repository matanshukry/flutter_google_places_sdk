// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Review {

/// The attribution that must be shown to the user if this review is displayed.
 String get attribution;/// This review's AuthorAttribution.
 AuthorAttribution get authorAttribution;/// A whole number between 1.0 and 5.0 (inclusive), meaning the number of stars.
 double get rating;/// The publish time for the review, expressed in "yyyy-MM-dd HH:mm:ss" format of UTC timezone.
 String get publishTime;/// A human-readable description of the relative publish time of a review, such as "a month ago", or "in the last week", based on the time elapsed.
 String get relativePublishTimeDescription;/// The text of the review in its original language.
 String? get originalText;/// The language code of the original text of the review.
 String? get originalTextLanguageCode;/// The text of the review.
 String? get text;/// The language code of the text of the review.
 String? get textLanguageCode;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.attribution, attribution) || other.attribution == attribution)&&(identical(other.authorAttribution, authorAttribution) || other.authorAttribution == authorAttribution)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.publishTime, publishTime) || other.publishTime == publishTime)&&(identical(other.relativePublishTimeDescription, relativePublishTimeDescription) || other.relativePublishTimeDescription == relativePublishTimeDescription)&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.originalTextLanguageCode, originalTextLanguageCode) || other.originalTextLanguageCode == originalTextLanguageCode)&&(identical(other.text, text) || other.text == text)&&(identical(other.textLanguageCode, textLanguageCode) || other.textLanguageCode == textLanguageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attribution,authorAttribution,rating,publishTime,relativePublishTimeDescription,originalText,originalTextLanguageCode,text,textLanguageCode);

@override
String toString() {
  return 'Review(attribution: $attribution, authorAttribution: $authorAttribution, rating: $rating, publishTime: $publishTime, relativePublishTimeDescription: $relativePublishTimeDescription, originalText: $originalText, originalTextLanguageCode: $originalTextLanguageCode, text: $text, textLanguageCode: $textLanguageCode)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String attribution, AuthorAttribution authorAttribution, double rating, String publishTime, String relativePublishTimeDescription, String? originalText, String? originalTextLanguageCode, String? text, String? textLanguageCode
});


$AuthorAttributionCopyWith<$Res> get authorAttribution;

}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attribution = null,Object? authorAttribution = null,Object? rating = null,Object? publishTime = null,Object? relativePublishTimeDescription = null,Object? originalText = freezed,Object? originalTextLanguageCode = freezed,Object? text = freezed,Object? textLanguageCode = freezed,}) {
  return _then(_self.copyWith(
attribution: null == attribution ? _self.attribution : attribution // ignore: cast_nullable_to_non_nullable
as String,authorAttribution: null == authorAttribution ? _self.authorAttribution : authorAttribution // ignore: cast_nullable_to_non_nullable
as AuthorAttribution,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,publishTime: null == publishTime ? _self.publishTime : publishTime // ignore: cast_nullable_to_non_nullable
as String,relativePublishTimeDescription: null == relativePublishTimeDescription ? _self.relativePublishTimeDescription : relativePublishTimeDescription // ignore: cast_nullable_to_non_nullable
as String,originalText: freezed == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String?,originalTextLanguageCode: freezed == originalTextLanguageCode ? _self.originalTextLanguageCode : originalTextLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,textLanguageCode: freezed == textLanguageCode ? _self.textLanguageCode : textLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorAttributionCopyWith<$Res> get authorAttribution {
  
  return $AuthorAttributionCopyWith<$Res>(_self.authorAttribution, (value) {
    return _then(_self.copyWith(authorAttribution: value));
  });
}
}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String attribution,  AuthorAttribution authorAttribution,  double rating,  String publishTime,  String relativePublishTimeDescription,  String? originalText,  String? originalTextLanguageCode,  String? text,  String? textLanguageCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.attribution,_that.authorAttribution,_that.rating,_that.publishTime,_that.relativePublishTimeDescription,_that.originalText,_that.originalTextLanguageCode,_that.text,_that.textLanguageCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String attribution,  AuthorAttribution authorAttribution,  double rating,  String publishTime,  String relativePublishTimeDescription,  String? originalText,  String? originalTextLanguageCode,  String? text,  String? textLanguageCode)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.attribution,_that.authorAttribution,_that.rating,_that.publishTime,_that.relativePublishTimeDescription,_that.originalText,_that.originalTextLanguageCode,_that.text,_that.textLanguageCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String attribution,  AuthorAttribution authorAttribution,  double rating,  String publishTime,  String relativePublishTimeDescription,  String? originalText,  String? originalTextLanguageCode,  String? text,  String? textLanguageCode)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.attribution,_that.authorAttribution,_that.rating,_that.publishTime,_that.relativePublishTimeDescription,_that.originalText,_that.originalTextLanguageCode,_that.text,_that.textLanguageCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({required this.attribution, required this.authorAttribution, required this.rating, required this.publishTime, required this.relativePublishTimeDescription, this.originalText, this.originalTextLanguageCode, this.text, this.textLanguageCode});
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

/// The attribution that must be shown to the user if this review is displayed.
@override final  String attribution;
/// This review's AuthorAttribution.
@override final  AuthorAttribution authorAttribution;
/// A whole number between 1.0 and 5.0 (inclusive), meaning the number of stars.
@override final  double rating;
/// The publish time for the review, expressed in "yyyy-MM-dd HH:mm:ss" format of UTC timezone.
@override final  String publishTime;
/// A human-readable description of the relative publish time of a review, such as "a month ago", or "in the last week", based on the time elapsed.
@override final  String relativePublishTimeDescription;
/// The text of the review in its original language.
@override final  String? originalText;
/// The language code of the original text of the review.
@override final  String? originalTextLanguageCode;
/// The text of the review.
@override final  String? text;
/// The language code of the text of the review.
@override final  String? textLanguageCode;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.attribution, attribution) || other.attribution == attribution)&&(identical(other.authorAttribution, authorAttribution) || other.authorAttribution == authorAttribution)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.publishTime, publishTime) || other.publishTime == publishTime)&&(identical(other.relativePublishTimeDescription, relativePublishTimeDescription) || other.relativePublishTimeDescription == relativePublishTimeDescription)&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.originalTextLanguageCode, originalTextLanguageCode) || other.originalTextLanguageCode == originalTextLanguageCode)&&(identical(other.text, text) || other.text == text)&&(identical(other.textLanguageCode, textLanguageCode) || other.textLanguageCode == textLanguageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attribution,authorAttribution,rating,publishTime,relativePublishTimeDescription,originalText,originalTextLanguageCode,text,textLanguageCode);

@override
String toString() {
  return 'Review(attribution: $attribution, authorAttribution: $authorAttribution, rating: $rating, publishTime: $publishTime, relativePublishTimeDescription: $relativePublishTimeDescription, originalText: $originalText, originalTextLanguageCode: $originalTextLanguageCode, text: $text, textLanguageCode: $textLanguageCode)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String attribution, AuthorAttribution authorAttribution, double rating, String publishTime, String relativePublishTimeDescription, String? originalText, String? originalTextLanguageCode, String? text, String? textLanguageCode
});


@override $AuthorAttributionCopyWith<$Res> get authorAttribution;

}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attribution = null,Object? authorAttribution = null,Object? rating = null,Object? publishTime = null,Object? relativePublishTimeDescription = null,Object? originalText = freezed,Object? originalTextLanguageCode = freezed,Object? text = freezed,Object? textLanguageCode = freezed,}) {
  return _then(_Review(
attribution: null == attribution ? _self.attribution : attribution // ignore: cast_nullable_to_non_nullable
as String,authorAttribution: null == authorAttribution ? _self.authorAttribution : authorAttribution // ignore: cast_nullable_to_non_nullable
as AuthorAttribution,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,publishTime: null == publishTime ? _self.publishTime : publishTime // ignore: cast_nullable_to_non_nullable
as String,relativePublishTimeDescription: null == relativePublishTimeDescription ? _self.relativePublishTimeDescription : relativePublishTimeDescription // ignore: cast_nullable_to_non_nullable
as String,originalText: freezed == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String?,originalTextLanguageCode: freezed == originalTextLanguageCode ? _self.originalTextLanguageCode : originalTextLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,textLanguageCode: freezed == textLanguageCode ? _self.textLanguageCode : textLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorAttributionCopyWith<$Res> get authorAttribution {
  
  return $AuthorAttributionCopyWith<$Res>(_self.authorAttribution, (value) {
    return _then(_self.copyWith(authorAttribution: value));
  });
}
}

// dart format on
