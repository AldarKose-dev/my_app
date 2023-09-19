// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterState {
  bool get isDarkTheme => throw _privateConstructorUsedError;
  WeatherModel? get currentWeather => throw _privateConstructorUsedError;
  bool get isFetchingWeather => throw _privateConstructorUsedError;
  int get counterValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
  @useResult
  $Res call(
      {bool isDarkTheme,
      WeatherModel? currentWeather,
      bool isFetchingWeather,
      int counterValue});

  $WeatherModelCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
    Object? currentWeather = freezed,
    Object? isFetchingWeather = null,
    Object? counterValue = null,
  }) {
    return _then(_value.copyWith(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      isFetchingWeather: null == isFetchingWeather
          ? _value.isFetchingWeather
          : isFetchingWeather // ignore: cast_nullable_to_non_nullable
              as bool,
      counterValue: null == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res>? get currentWeather {
    if (_value.currentWeather == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.currentWeather!, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CounterStateCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$$_CounterStateCopyWith(
          _$_CounterState value, $Res Function(_$_CounterState) then) =
      __$$_CounterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDarkTheme,
      WeatherModel? currentWeather,
      bool isFetchingWeather,
      int counterValue});

  @override
  $WeatherModelCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class __$$_CounterStateCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$_CounterState>
    implements _$$_CounterStateCopyWith<$Res> {
  __$$_CounterStateCopyWithImpl(
      _$_CounterState _value, $Res Function(_$_CounterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
    Object? currentWeather = freezed,
    Object? isFetchingWeather = null,
    Object? counterValue = null,
  }) {
    return _then(_$_CounterState(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      isFetchingWeather: null == isFetchingWeather
          ? _value.isFetchingWeather
          : isFetchingWeather // ignore: cast_nullable_to_non_nullable
              as bool,
      counterValue: null == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CounterState implements _CounterState {
  const _$_CounterState(
      {this.isDarkTheme = false,
      this.currentWeather,
      this.isFetchingWeather = false,
      this.counterValue = 0});

  @override
  @JsonKey()
  final bool isDarkTheme;
  @override
  final WeatherModel? currentWeather;
  @override
  @JsonKey()
  final bool isFetchingWeather;
  @override
  @JsonKey()
  final int counterValue;

  @override
  String toString() {
    return 'CounterState(isDarkTheme: $isDarkTheme, currentWeather: $currentWeather, isFetchingWeather: $isFetchingWeather, counterValue: $counterValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounterState &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.isFetchingWeather, isFetchingWeather) ||
                other.isFetchingWeather == isFetchingWeather) &&
            (identical(other.counterValue, counterValue) ||
                other.counterValue == counterValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme, currentWeather,
      isFetchingWeather, counterValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CounterStateCopyWith<_$_CounterState> get copyWith =>
      __$$_CounterStateCopyWithImpl<_$_CounterState>(this, _$identity);
}

abstract class _CounterState implements CounterState {
  const factory _CounterState(
      {final bool isDarkTheme,
      final WeatherModel? currentWeather,
      final bool isFetchingWeather,
      final int counterValue}) = _$_CounterState;

  @override
  bool get isDarkTheme;
  @override
  WeatherModel? get currentWeather;
  @override
  bool get isFetchingWeather;
  @override
  int get counterValue;
  @override
  @JsonKey(ignore: true)
  _$$_CounterStateCopyWith<_$_CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}
