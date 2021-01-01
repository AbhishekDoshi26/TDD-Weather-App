import 'package:flutter/material.dart';

import '../../../../core/util/constants.dart';
import '../bloc/weather_bloc.dart';

class WeatherCard extends StatelessWidget {
  final WeatherLoaded state;
  final String city;
  WeatherCard({this.state, this.city});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: new BorderSide(color: Colors.blue, width: 3.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white60,
      elevation: 10.0,
      shadowColor: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'City: ' + city + ' 🏡',
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Current Temperature: ' +
                  state.weatherModel.temperature.toString() +
                  ' °C',
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Today\'s Maximum: ' +
                  state.weatherModel.todayMax.toString() +
                  ' °C',
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Today\'s Minimum: ' +
                  state.weatherModel.todayMin.toString() +
                  ' °C',
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Yesterday\'s Maximum: ' +
                  state.weatherModel.yesterdayMax.toString() +
                  ' °C',
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Yesterday\'s Minimum: ' +
                  state.weatherModel.yesterdayMin.toString() +
                  ' °C',
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
