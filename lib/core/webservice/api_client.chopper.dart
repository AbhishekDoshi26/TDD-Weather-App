// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiClient extends ApiClient {
  _$ApiClient([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiClient;

  @override
  Future<Response<WeatherModel>> getWeather(String city) {
    final $url = '/$city';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WeatherModel, WeatherModel>($request);
  }
}
