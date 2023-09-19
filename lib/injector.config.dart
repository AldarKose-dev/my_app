// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/counter/data/repositories/weather_repository.dart' as _i3;
import 'features/counter/data/services/weather_service_impl.dart' as _i5;
import 'features/counter/domain/services/weather_service.dart' as _i4;
import 'features/counter/presentation/cubit/counter_cubit.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.WeatherRepository>(_i3.WeatherRepositoryImpl());
  gh.singleton<_i4.WeatherService>(
      _i5.WeatherServiceeImpl(get<_i3.WeatherRepository>()));
  gh.factory<_i6.CounterCubit>(
      () => _i6.CounterCubit(get<_i4.WeatherService>()));
  return get;
}
