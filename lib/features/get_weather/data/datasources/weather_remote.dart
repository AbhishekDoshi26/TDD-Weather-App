import '../models/weather_model.dart';

abstract class WeatherRemote {
  Future<WeatherModel> getWeatherRemote(String city);
}
