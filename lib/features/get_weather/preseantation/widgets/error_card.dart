import 'package:flutter/material.dart';
import 'package:tdd_weather/core/util/constants.dart';

class ErrorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          side: new BorderSide(color: Colors.blue, width: 3.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white60,
        elevation: 10.0,
        shadowColor: Colors.yellow,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Server Failure!😢',
              style: weatherCardTextStyle.copyWith(
                fontSize: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
