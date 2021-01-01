import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/weather_model.dart';
import '../../domain/usecases/get_weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherUseCase weatherUseCase;
  WeatherBloc({this.weatherUseCase}) : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is GetWeatherEvent) {
      yield WeatherLoading();
      final result = await weatherUseCase(
        WeatherParams(city: event.city),
      );
      yield* result.fold(
        (failure) async* {
          yield WeatherError();
        },
        (weatherData) async* {
          yield WeatherLoaded(weatherModel: weatherData);
        },
      );
    }
  }
}
