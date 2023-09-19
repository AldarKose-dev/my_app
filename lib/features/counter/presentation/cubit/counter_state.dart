import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:my_app/features/counter/domain/entities/weather_model.dart';

part 'counter_state.freezed.dart';

@Freezed()
class CounterState with _$CounterState {
  const factory CounterState({
    @Default(false) bool isDarkTheme,
    WeatherModel? currentWeather,
    @Default(false) bool isFetchingWeather,
    @Default(0) int counterValue, 
  }) = _CounterState;
}
