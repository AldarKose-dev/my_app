import 'package:dartz/dartz.dart';
import 'package:my_app/features/counter/domain/entities/weather_model.dart';

abstract class WeatherService {
  Future<Either<String, WeatherModel>> getWeatherData(
      double longitude, double latitude);
}
