import 'package:dartz/dartz.dart';
import 'package:tdd_weather/core/error/failure.dart';
import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherModel>> getWeather(String city);
}
