import 'package:flutter/material.dart';

import 'components/next_days_weather.dart';
import 'components/weather_details.dart';
import 'components/weather_summary.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, //'detach' appBar from background
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
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              child: NextDaysWeather(),
            ),
          )
        ],
      ),
    );
  }
}
