// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  TimeOfWeek get open => throw _privateConstructorUsedError;
  TimeOfWeek? get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodCopyWith<Period> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res, Period>;
  @useResult
  $Res call({TimeOfWeek open, TimeOfWeek? close});

  $TimeOfWeekCopyWith<$Res> get open;
  $TimeOfWeekCopyWith<$Res>? get close;
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res, $Val extends Period>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as TimeOfWeek,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as TimeOfWeek?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeOfWeekCopyWith<$Res> get open {
    return $TimeOfWeekCopyWith<$Res>(_value.open, (value) {
      return _then(_value.copyWith(open: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeOfWeekCopyWith<$Res>? get close {
    if (_value.close == null) {
      return null;
    }

    return $TimeOfWeekCopyWith<$Res>(_value.close!, (value) {
      return _then(_value.copyWith(close: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PeriodImplCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$$PeriodImplCopyWith(
          _$PeriodImpl value, $Res Function(_$PeriodImpl) then) =
      __$$PeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeOfWeek open, TimeOfWeek? close});

  @override
  $TimeOfWeekCopyWith<$Res> get open;
  @override
  $TimeOfWeekCopyWith<$Res>? get close;
}

/// @nodoc
class __$$PeriodImplCopyWithImpl<$Res>
    extends _$PeriodCopyWithImpl<$Res, _$PeriodImpl>
    implements _$$PeriodImplCopyWith<$Res> {
  __$$PeriodImplCopyWithImpl(
      _$PeriodImpl _value, $Res Function(_$PeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = freezed,
  }) {
    return _then(_$PeriodImpl(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as TimeOfWeek,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as TimeOfWeek?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodImpl implements _Period {
  const _$PeriodImpl({required this.open, required this.close});

  factory _$PeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodImplFromJson(json);

  @override
  final TimeOfWeek open;
  @override
  final TimeOfWeek? close;

  @override
  String toString() {
    return 'Period(open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodImpl &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      __$$PeriodImplCopyWithImpl<_$PeriodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodImplToJson(
      this,
    );
  }
}

abstract class _Period implements Period {
  const factory _Period(
      {required final TimeOfWeek open,
      required final TimeOfWeek? close}) = _$PeriodImpl;

  factory _Period.fromJson(Map<String, dynamic> json) = _$PeriodImpl.fromJson;

  @override
  TimeOfWeek get open;
  @override
  TimeOfWeek? get close;
  @override
  @JsonKey(ignore: true)
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
