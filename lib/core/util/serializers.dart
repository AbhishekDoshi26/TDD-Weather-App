import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tdd_weather/features/get_weather/data/models/weather_model.dart';

part 'serializers.g.dart';

@SerializersFor(const [WeatherModel])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
