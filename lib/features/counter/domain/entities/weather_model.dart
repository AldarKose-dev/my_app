import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    required Location location,
    required Current current,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location({
    required String name,
    required String country,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  factory Current({
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'wind_kph') required double windKph,
    @JsonKey(name: 'pressure_mb') required double pressureMb,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}
