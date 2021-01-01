import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/webservice/api_client.dart';
import '../models/weather_model.dart';
import 'weather_remote.dart';

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
