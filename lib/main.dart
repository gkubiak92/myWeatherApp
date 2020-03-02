import 'package:flutter/material.dart';
import 'package:myWeatherApp/widgets/weather/next_days_weather.dart';
import 'package:myWeatherApp/widgets/weather/weather_details.dart';
import 'package:myWeatherApp/widgets/weather/weather_summary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myWeatherApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('localization plPL'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    WeatherSummary(
                      temperature: 12,
                      summary: 'Cloudy day today',
                      date: DateTime.now(),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                WeatherDetail(),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: NextDaysWeather(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
