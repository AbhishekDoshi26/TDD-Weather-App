// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherModel> _$weatherModelSerializer =
    new _$WeatherModelSerializer();

class _$WeatherModelSerializer implements StructuredSerializer<WeatherModel> {
  @override
  final Iterable<Type> types = const [WeatherModel, _$WeatherModel];
  @override
  final String wireName = 'WeatherModel';

  @override
  Iterable<Object> serialize(Serializers serializers, WeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'temperature',
      serializers.serialize(object.temperature,
          specifiedType: const FullType(int)),
      'yesterdayMax',
      serializers.serialize(object.yesterdayMax,
          specifiedType: const FullType(int)),
      'yesterdayMin',
      serializers.serialize(object.yesterdayMin,
          specifiedType: const FullType(int)),
      'todayMax',
      serializers.serialize(object.todayMax,
          specifiedType: const FullType(int)),
      'todayMin',
      serializers.serialize(object.todayMin,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WeatherModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'temperature':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'yesterdayMax':
          result.yesterdayMax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'yesterdayMin':
          result.yesterdayMin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'todayMax':
          result.todayMax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'todayMin':
          result.todayMin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherModel extends WeatherModel {
  @override
  final int temperature;
  @override
  final int yesterdayMax;
  @override
  final int yesterdayMin;
  @override
  final int todayMax;
  @override
  final int todayMin;

  factory _$WeatherModel([void Function(WeatherModelBuilder) updates]) =>
      (new WeatherModelBuilder()..update(updates)).build();

  _$WeatherModel._(
      {this.temperature,
      this.yesterdayMax,
      this.yesterdayMin,
      this.todayMax,
      this.todayMin})
      : super._() {
    if (temperature == null) {
      throw new BuiltValueNullFieldError('WeatherModel', 'temperature');
    }
    if (yesterdayMax == null) {
      throw new BuiltValueNullFieldError('WeatherModel', 'yesterdayMax');
    }
    if (yesterdayMin == null) {
      throw new BuiltValueNullFieldError('WeatherModel', 'yesterdayMin');
    }
    if (todayMax == null) {
      throw new BuiltValueNullFieldError('WeatherModel', 'todayMax');
    }
    if (todayMin == null) {
      throw new BuiltValueNullFieldError('WeatherModel', 'todayMin');
    }
  }

  @override
  WeatherModel rebuild(void Function(WeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherModelBuilder toBuilder() => new WeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherModel &&
        temperature == other.temperature &&
        yesterdayMax == other.yesterdayMax &&
        yesterdayMin == other.yesterdayMin &&
        todayMax == other.todayMax &&
        todayMin == other.todayMin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, temperature.hashCode), yesterdayMax.hashCode),
                yesterdayMin.hashCode),
            todayMax.hashCode),
        todayMin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherModel')
          ..add('temperature', temperature)
          ..add('yesterdayMax', yesterdayMax)
          ..add('yesterdayMin', yesterdayMin)
          ..add('todayMax', todayMax)
          ..add('todayMin', todayMin))
        .toString();
  }
}

class WeatherModelBuilder
    implements Builder<WeatherModel, WeatherModelBuilder> {
  _$WeatherModel _$v;

  int _temperature;
  int get temperature => _$this._temperature;
  set temperature(int temperature) => _$this._temperature = temperature;

  int _yesterdayMax;
  int get yesterdayMax => _$this._yesterdayMax;
  set yesterdayMax(int yesterdayMax) => _$this._yesterdayMax = yesterdayMax;

  int _yesterdayMin;
  int get yesterdayMin => _$this._yesterdayMin;
  set yesterdayMin(int yesterdayMin) => _$this._yesterdayMin = yesterdayMin;

  int _todayMax;
  int get todayMax => _$this._todayMax;
  set todayMax(int todayMax) => _$this._todayMax = todayMax;

  int _todayMin;
  int get todayMin => _$this._todayMin;
  set todayMin(int todayMin) => _$this._todayMin = todayMin;

  WeatherModelBuilder();

  WeatherModelBuilder get _$this {
    if (_$v != null) {
      _temperature = _$v.temperature;
      _yesterdayMax = _$v.yesterdayMax;
      _yesterdayMin = _$v.yesterdayMin;
      _todayMax = _$v.todayMax;
      _todayMin = _$v.todayMin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WeatherModel;
  }

  @override
  void update(void Function(WeatherModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherModel build() {
    final _$result = _$v ??
        new _$WeatherModel._(
            temperature: temperature,
            yesterdayMax: yesterdayMax,
            yesterdayMin: yesterdayMin,
            todayMax: todayMax,
            todayMin: todayMin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
