import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class WeatherRepository {
  Future<Response> getCurentWeather(double longitude, double latitude);
}

@Singleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl();

  final Dio dioService = Dio();

  @override
  Future<Response> getCurentWeather(double longitude, double latitude) async {
    final response = await dioService
        .get("https://api.weatherapi.com/v1/current.json", queryParameters: {
      "q": "$latitude, $longitude",
      "key": "3453f5a661b84b4b8f283744231909"
    });
    return response;
  }
}
