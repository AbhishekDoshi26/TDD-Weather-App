import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';

abstract class WeatherRemote {
  Future<WeatherModel> getWeatherRemote(String city);
}
