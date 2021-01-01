import 'package:tdd_weather/core/error/exception.dart';
import 'package:tdd_weather/core/error/failure.dart';
import 'package:tdd_weather/core/webservice/api_client.dart';
import 'package:tdd_weather/features/get_weather/data/datasources/weather_remote.dart';
import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';

class WeatherRemoteImpl implements WeatherRemote {
  final ApiClient client;

  WeatherRemoteImpl({this.client});

  @override
  Future<WeatherModel> getWeatherRemote(String city) async {
    try {
      final data = await client.getWeather(city);
      return data.body;
    } on ServerException {
      throw ServerFailure();
    }
  }
}
