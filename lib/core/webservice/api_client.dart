import 'package:chopper/chopper.dart';

import '../../features/get_weather/data/models/weather_model.dart';
import '../util/built_value_converter.dart';
import '../util/constants.dart';

part 'api_client.chopper.dart';

@ChopperApi(baseUrl: "")
abstract class ApiClient extends ChopperService {
  @Get(path: '/{city}')
  Future<Response<WeatherModel>> getWeather(@Path() String city);

  static ApiClient create() {
    final client = ChopperClient(
      baseUrl: baseUrl,
      services: [_$ApiClient()],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );
    return _$ApiClient(client);
  }
}
