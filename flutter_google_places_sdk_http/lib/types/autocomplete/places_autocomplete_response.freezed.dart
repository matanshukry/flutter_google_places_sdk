// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_autocomplete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlacesAutocompleteResponse _$PlacesAutocompleteResponseFromJson(
    Map<String, dynamic> json) {
  return _PlacesAutocompleteResponse.fromJson(json);
}

/// @nodoc
mixin _$PlacesAutocompleteResponse {
  /// Contains an array of predictions.
  List<PlaceAutocompletePrediction> get predictions =>
      throw _privateConstructorUsedError;

  /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
  PlacesAutocompleteStatus get status => throw _privateConstructorUsedError;

  /// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
  String? get error_message => throw _privateConstructorUsedError;

  /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
  List<String>? get info_messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesAutocompleteResponseCopyWith<PlacesAutocompleteResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesAutocompleteResponseCopyWith<$Res> {
  factory $PlacesAutocompleteResponseCopyWith(PlacesAutocompleteResponse value,
          $Res Function(PlacesAutocompleteResponse) then) =
      _$PlacesAutocompleteResponseCopyWithImpl<$Res,
          PlacesAutocompleteResponse>;
  @useResult
  $Res call(
      {List<PlaceAutocompletePrediction> predictions,
      PlacesAutocompleteStatus status,
      String? error_message,
      List<String>? info_messages});
}

/// @nodoc
class _$PlacesAutocompleteResponseCopyWithImpl<$Res,
        $Val extends PlacesAutocompleteResponse>
    implements $PlacesAutocompleteResponseCopyWith<$Res> {
  _$PlacesAutocompleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
    Object? status = null,
    Object? error_message = freezed,
    Object? info_messages = freezed,
  }) {
    return _then(_value.copyWith(
      predictions: null == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompletePrediction>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlacesAutocompleteStatus,
      error_message: freezed == error_message
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String?,
      info_messages: freezed == info_messages
          ? _value.info_messages
          : info_messages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacesAutocompleteResponseImplCopyWith<$Res>
    implements $PlacesAutocompleteResponseCopyWith<$Res> {
  factory _$$PlacesAutocompleteResponseImplCopyWith(
          _$PlacesAutocompleteResponseImpl value,
          $Res Function(_$PlacesAutocompleteResponseImpl) then) =
      __$$PlacesAutocompleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlaceAutocompletePrediction> predictions,
      PlacesAutocompleteStatus status,
      String? error_message,
      List<String>? info_messages});
}

/// @nodoc
class __$$PlacesAutocompleteResponseImplCopyWithImpl<$Res>
    extends _$PlacesAutocompleteResponseCopyWithImpl<$Res,
        _$PlacesAutocompleteResponseImpl>
    implements _$$PlacesAutocompleteResponseImplCopyWith<$Res> {
  __$$PlacesAutocompleteResponseImplCopyWithImpl(
      _$PlacesAutocompleteResponseImpl _value,
      $Res Function(_$PlacesAutocompleteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
    Object? status = null,
    Object? error_message = freezed,
    Object? info_messages = freezed,
  }) {
    return _then(_$PlacesAutocompleteResponseImpl(
      predictions: null == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompletePrediction>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlacesAutocompleteStatus,
      error_message: freezed == error_message
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String?,
      info_messages: freezed == info_messages
          ? _value._info_messages
          : info_messages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesAutocompleteResponseImpl implements _PlacesAutocompleteResponse {
  const _$PlacesAutocompleteResponseImpl(
      {required final List<PlaceAutocompletePrediction> predictions,
      required this.status,
      required this.error_message,
      required final List<String>? info_messages})
      : _predictions = predictions,
        _info_messages = info_messages;

  factory _$PlacesAutocompleteResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlacesAutocompleteResponseImplFromJson(json);

  /// Contains an array of predictions.
  final List<PlaceAutocompletePrediction> _predictions;

  /// Contains an array of predictions.
  @override
  List<PlaceAutocompletePrediction> get predictions {
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictions);
  }

  /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
  @override
  final PlacesAutocompleteStatus status;

  /// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
  @override
  final String? error_message;

  /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
  final List<String>? _info_messages;

  /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
  @override
  List<String>? get info_messages {
    final value = _info_messages;
    if (value == null) return null;
    if (_info_messages is EqualUnmodifiableListView) return _info_messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlacesAutocompleteResponse(predictions: $predictions, status: $status, error_message: $error_message, info_messages: $info_messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesAutocompleteResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error_message, error_message) ||
                other.error_message == error_message) &&
            const DeepCollectionEquality()
                .equals(other._info_messages, _info_messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_predictions),
      status,
      error_message,
      const DeepCollectionEquality().hash(_info_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesAutocompleteResponseImplCopyWith<_$PlacesAutocompleteResponseImpl>
      get copyWith => __$$PlacesAutocompleteResponseImplCopyWithImpl<
          _$PlacesAutocompleteResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesAutocompleteResponseImplToJson(
      this,
    );
  }
}

abstract class _PlacesAutocompleteResponse
    implements PlacesAutocompleteResponse {
  const factory _PlacesAutocompleteResponse(
          {required final List<PlaceAutocompletePrediction> predictions,
          required final PlacesAutocompleteStatus status,
          required final String? error_message,
          required final List<String>? info_messages}) =
      _$PlacesAutocompleteResponseImpl;

  factory _PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) =
      _$PlacesAutocompleteResponseImpl.fromJson;

  @override

  /// Contains an array of predictions.
  List<PlaceAutocompletePrediction> get predictions;
  @override

  /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
  PlacesAutocompleteStatus get status;
  @override

  /// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
  String? get error_message;
  @override

  /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
  List<String>? get info_messages;
  @override
  @JsonKey(ignore: true)
  _$$PlacesAutocompleteResponseImplCopyWith<_$PlacesAutocompleteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
