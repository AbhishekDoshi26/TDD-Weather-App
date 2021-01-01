import 'package:tdd_weather/features/get_weather/data/datasources/weather_remote.dart';
import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';

class WeatherRemoteImpl implements WeatherRemote {
  @override
  Future<WeatherModel> getWeatherRemote(String city) {
    throw UnimplementedError();
  }
}
