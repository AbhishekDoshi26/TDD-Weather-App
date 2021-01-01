import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:tdd_weather/core/util/built_value_converter.dart';
import 'package:tdd_weather/core/util/constants.dart';
import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';

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
