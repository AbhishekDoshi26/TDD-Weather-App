import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_bloc.dart';
import '../widgets/error_card.dart';
import '../widgets/weather_card.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _city = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/bg.jpg',
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (BuildContext context, state) {
              if (state is WeatherLoading) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                );
              }
              if (state is WeatherError) {
                return ErrorCard();
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    state is WeatherLoaded
                        ? WeatherCard(
                            state: state,
                            city: _city.text,
                          )
                        : Container(),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _city,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          hintText: 'Enter City Name',
                          hintStyle: TextStyle(color: Colors.black26),
                          prefixIcon: Icon(Icons.home),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 200.0,
                      child: RaisedButton(
                        child: Text(
                          'Check Weather!',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue.shade400,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        onPressed: () async {
                          context.read<WeatherBloc>().add(
                                GetWeatherEvent(city: _city.text),
                              );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
