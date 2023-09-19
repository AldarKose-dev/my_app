import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/features/counter/data/repositories/weather_repository.dart';
import 'package:my_app/features/counter/domain/entities/weather_model.dart';
import 'package:my_app/features/counter/domain/services/weather_service.dart';

@Singleton(as: WeatherService)
class WeatherServiceeImpl implements WeatherService {
  WeatherServiceeImpl(this._weatherRepository);
  final WeatherRepository _weatherRepository;
  @override
  Future<Either<String, WeatherModel>> getWeatherData(
      double longitude, double latitude) async {
    try {
      final response =
          await _weatherRepository.getCurentWeather(longitude, latitude);
      return Right(WeatherModel.fromJson(response.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
