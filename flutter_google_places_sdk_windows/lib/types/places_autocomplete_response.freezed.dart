// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_autocomplete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$PlacesAutocompleteResponseCopyWithImpl<$Res>;
  $Res call(
      {List<PlaceAutocompletePrediction> predictions,
      PlacesAutocompleteStatus status,
      String? error_message,
      List<String>? info_messages});
}

/// @nodoc
class _$PlacesAutocompleteResponseCopyWithImpl<$Res>
    implements $PlacesAutocompleteResponseCopyWith<$Res> {
  _$PlacesAutocompleteResponseCopyWithImpl(this._value, this._then);

  final PlacesAutocompleteResponse _value;
  // ignore: unused_field
  final $Res Function(PlacesAutocompleteResponse) _then;

  @override
  $Res call({
    Object? predictions = freezed,
    Object? status = freezed,
    Object? error_message = freezed,
    Object? info_messages = freezed,
  }) {
    return _then(_value.copyWith(
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompletePrediction>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlacesAutocompleteStatus,
      error_message: error_message == freezed
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String?,
      info_messages: info_messages == freezed
          ? _value.info_messages
          : info_messages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlacesAutocompleteResponseCopyWith<$Res>
    implements $PlacesAutocompleteResponseCopyWith<$Res> {
  factory _$$_PlacesAutocompleteResponseCopyWith(
          _$_PlacesAutocompleteResponse value,
          $Res Function(_$_PlacesAutocompleteResponse) then) =
      __$$_PlacesAutocompleteResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PlaceAutocompletePrediction> predictions,
      PlacesAutocompleteStatus status,
      String? error_message,
      List<String>? info_messages});
}

/// @nodoc
class __$$_PlacesAutocompleteResponseCopyWithImpl<$Res>
    extends _$PlacesAutocompleteResponseCopyWithImpl<$Res>
    implements _$$_PlacesAutocompleteResponseCopyWith<$Res> {
  __$$_PlacesAutocompleteResponseCopyWithImpl(
      _$_PlacesAutocompleteResponse _value,
      $Res Function(_$_PlacesAutocompleteResponse) _then)
      : super(_value, (v) => _then(v as _$_PlacesAutocompleteResponse));

  @override
  _$_PlacesAutocompleteResponse get _value =>
      super._value as _$_PlacesAutocompleteResponse;

  @override
  $Res call({
    Object? predictions = freezed,
    Object? status = freezed,
    Object? error_message = freezed,
    Object? info_messages = freezed,
  }) {
    return _then(_$_PlacesAutocompleteResponse(
      predictions: predictions == freezed
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<PlaceAutocompletePrediction>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlacesAutocompleteStatus,
      error_message: error_message == freezed
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String?,
      info_messages: info_messages == freezed
          ? _value._info_messages
          : info_messages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesAutocompleteResponse implements _PlacesAutocompleteResponse {
  const _$_PlacesAutocompleteResponse(
      {required final List<PlaceAutocompletePrediction> predictions,
      required this.status,
      required this.error_message,
      required final List<String>? info_messages})
      : _predictions = predictions,
        _info_messages = info_messages;

  factory _$_PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesAutocompleteResponseFromJson(json);

  /// Contains an array of predictions.
  final List<PlaceAutocompletePrediction> _predictions;

  /// Contains an array of predictions.
  @override
  List<PlaceAutocompletePrediction> get predictions {
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlacesAutocompleteResponse(predictions: $predictions, status: $status, error_message: $error_message, info_messages: $info_messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesAutocompleteResponse &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.error_message, error_message) &&
            const DeepCollectionEquality()
                .equals(other._info_messages, _info_messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_predictions),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error_message),
      const DeepCollectionEquality().hash(_info_messages));

  @JsonKey(ignore: true)
  @override
  _$$_PlacesAutocompleteResponseCopyWith<_$_PlacesAutocompleteResponse>
      get copyWith => __$$_PlacesAutocompleteResponseCopyWithImpl<
          _$_PlacesAutocompleteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesAutocompleteResponseToJson(this);
  }
}

abstract class _PlacesAutocompleteResponse
    implements PlacesAutocompleteResponse {
  const factory _PlacesAutocompleteResponse(
          {required final List<PlaceAutocompletePrediction> predictions,
          required final PlacesAutocompleteStatus status,
          required final String? error_message,
          required final List<String>? info_messages}) =
      _$_PlacesAutocompleteResponse;

  factory _PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) =
      _$_PlacesAutocompleteResponse.fromJson;

  @override

  /// Contains an array of predictions.
  List<PlaceAutocompletePrediction> get predictions =>
      throw _privateConstructorUsedError;
  @override

  /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
  PlacesAutocompleteStatus get status => throw _privateConstructorUsedError;
  @override

  /// When the service returns a status code other than OK<, there may be an additional error_message field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
  String? get error_message => throw _privateConstructorUsedError;
  @override

  /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
  List<String>? get info_messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesAutocompleteResponseCopyWith<_$_PlacesAutocompleteResponse>
      get copyWith => throw _privateConstructorUsedError;
}
