import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases.dart';
import '../../data/models/weather_model.dart';
import '../repositories/weather_repository.dart';

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
