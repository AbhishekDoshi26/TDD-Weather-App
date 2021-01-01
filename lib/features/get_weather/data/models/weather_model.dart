import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'weather_model.g.dart';

abstract class WeatherModel
    implements Built<WeatherModel, WeatherModelBuilder> {
  int get temperature;
  int get yesterdayMax;
  int get yesterdayMin;
  int get todayMax;
  int get todayMin;

  WeatherModel._();

  factory WeatherModel([updates(WeatherModelBuilder b)]) = _$WeatherModel;

  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;
}
