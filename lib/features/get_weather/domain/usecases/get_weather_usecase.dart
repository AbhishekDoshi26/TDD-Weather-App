import 'package:tdd_weather/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tdd_weather/core/usecases.dart';
import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';
import 'package:tdd_weather/features/get_weather/domain/repositories/weather_repository.dart';

class WeatherUseCase extends UseCase<WeatherModel, WeatherParams> {
  final WeatherRepository repository;

  WeatherUseCase({this.repository});

  @override
  Future<Either<Failure, WeatherModel>> call(WeatherParams params) async {
    return await repository.getWeather(params.city);
  }
}

class WeatherParams extends Params {
  final String city;

  WeatherParams({this.city});
}
