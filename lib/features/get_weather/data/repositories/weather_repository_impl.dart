import 'package:tdd_weather/core/error/exception.dart';
import 'package:tdd_weather/features/get_weather/data/datasources/weather_remote.dart';
import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';
import 'package:tdd_weather/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tdd_weather/features/get_weather/domain/repositories/weather_repository.dart';

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
