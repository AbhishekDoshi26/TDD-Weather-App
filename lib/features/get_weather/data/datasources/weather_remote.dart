import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';
import 'package:tdd_weather/features/get_weather/domain/entities/weather.dart';

abstract class WeatherRemote {
  Future<WeatherModel> getWeatherRemote(String city);
}
