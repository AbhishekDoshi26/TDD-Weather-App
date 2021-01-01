import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/weather_model.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherModel>> getWeather(String city);
}
