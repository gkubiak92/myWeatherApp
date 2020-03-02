import 'package:flutter/material.dart';

class WeatherDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.wb_cloudy, size: 32, color: Colors.blueAccent),
            Icon(Icons.wb_sunny, size: 32, color: Colors.blueAccent),
            Icon(Icons.wb_cloudy, size: 32, color: Colors.blueAccent),
            Icon(Icons.wb_sunny, size: 32, color: Colors.blueAccent),
          ],
        ),
      ),
    );
  }
}
