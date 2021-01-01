import 'package:get_it/get_it.dart';

import 'core/webservice/api_client.dart';
import 'features/get_weather/data/datasources/weather_remote.dart';
import 'features/get_weather/data/datasources/weather_remote_impl.dart';
import 'features/get_weather/data/repositories/weather_repository_impl.dart';
import 'features/get_weather/domain/repositories/weather_repository.dart';
import 'features/get_weather/domain/usecases/get_weather_usecase.dart';
import 'features/get_weather/preseantation/bloc/weather_bloc.dart';

final serviceLocation = GetIt.instance;

void init() {
  serviceLocation.registerFactory(
    () => WeatherBloc(
      weatherUseCase: serviceLocation(),
    ),
  );

  serviceLocation.registerLazySingleton(
    () => WeatherUseCase(
      repository: serviceLocation(),
    ),
  );

  serviceLocation.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
      weatherData: serviceLocation(),
    ),
  );

  serviceLocation.registerLazySingleton<WeatherRemote>(
    () => WeatherRemoteImpl(
      client: serviceLocation(),
    ),
  );

  serviceLocation.registerLazySingleton(() => ApiClient.create());
}
