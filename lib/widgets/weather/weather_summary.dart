import 'package:flutter/material.dart';

class WeatherSummary extends StatelessWidget {
  final int temperature;
  final String summary;
  final DateTime date;

  const WeatherSummary({Key key, this.temperature, this.summary, this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      color: Colors.indigoAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.wb_cloudy, size: 64, color: Colors.white),
                Text(
                  this.temperature.toString(),
                  style: TextStyle(fontSize: 64, color: Colors.white),
                ),
                Text(
                  'C',
                  style: TextStyle(fontSize: 32, color: Colors.white),
                )
              ],
            ),
            Text(this.summary,
                style: TextStyle(fontSize: 16, color: Colors.white)),
            Text(this.date.toString(),
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
