import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';
import 'package:tdd_weather/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tdd_weather/features/get_weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<Either<Failure, WeatherModel>> getWeather(String city) {
    throw UnimplementedError();
  }
}
