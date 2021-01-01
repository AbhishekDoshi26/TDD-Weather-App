import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_weather/injection_container.dart' as di;

import 'features/get_weather/preseantation/bloc/weather_bloc.dart';
import 'features/get_weather/preseantation/pages/weather_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => di.serviceLocation<WeatherBloc>(),
        child: Home(),
      ),
    );
  }
}
