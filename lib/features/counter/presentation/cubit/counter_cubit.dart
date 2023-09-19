import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/features/counter/domain/services/weather_service.dart';
import 'package:my_app/features/counter/presentation/cubit/counter_state.dart';
import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class CounterCubit extends Cubit<CounterState> {
  final WeatherService _weatherService;
  CounterCubit(this._weatherService) : super(const CounterState());

  void incrementCounter() {
    int counterValue = state.counterValue;
    int valueToAdd = state.isDarkTheme ? 2 : 1;
    if (counterValue + valueToAdd > 10) return;
    emit(state.copyWith(counterValue: counterValue + valueToAdd));
  }

  void setTheme() {
    emit(state.copyWith(
      isDarkTheme: !state.isDarkTheme,
    ));
  }

  void decrementCounter() {
    int counterValue = state.counterValue;
    int valueToRemove = state.isDarkTheme ? 2 : 1;

    if (counterValue - valueToRemove < 0) return;

    emit(state.copyWith(counterValue: state.counterValue - valueToRemove));
  }

  Future<void> getCurentWeather() async {
    try {
      await Permission.location.request();

      if (await Permission.location.serviceStatus.isEnabled) {
        var status = await Permission.location.status;
        if (status.isGranted) {
          emit(state.copyWith(isFetchingWeather: true));

          final position =
              await GeolocatorPlatform.instance.getCurrentPosition();
          final response = await _weatherService.getWeatherData(
              position.longitude, position.latitude);

          response.fold((l) => Fluttertoast.showToast(msg: e.toString()),
              (r) => emit(state.copyWith(currentWeather: r)));
        } else if (status.isPermanentlyDenied) {
          await Fluttertoast.showToast(msg: "Give access to location first");
          Future.delayed(const Duration(seconds: 2), () async {
            await openAppSettings();
          });
        }
      }
    } on Exception catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    } finally {
      emit(state.copyWith(isFetchingWeather: false));
    }
  }
}
