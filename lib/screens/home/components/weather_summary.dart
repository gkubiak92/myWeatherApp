import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherSummary extends StatelessWidget {
  final double temperature;
  final String summary;
  final DateTime date;

  const WeatherSummary({Key key, this.temperature, this.summary, this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final df = DateFormat.yMMMMEEEEd();
    final formattedDate = df.format(this.date);

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
                  this.temperature.toStringAsFixed(0),
                  style: TextStyle(fontSize: 64, color: Colors.white),
                ),
                Text(
                  '\u2103', //farenheit: \u2109 only degree symbol: \u00B0
                  style: TextStyle(fontSize: 32, color: Colors.white),
                )
              ],
            ),
            Text(this.summary,
                style: TextStyle(fontSize: 16, color: Colors.white)),
            Text(formattedDate.toString(),
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
