import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_remote.dart';
import '../models/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemote weatherData;

  WeatherRepositoryImpl({this.weatherData});

  @override
  Future<Either<Failure, WeatherModel>> getWeather(String city) async {
    try {
      final data = await weatherData.getWeatherRemote(city);
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
