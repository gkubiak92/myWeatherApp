import 'package:flutter/material.dart';

import 'package:myWeatherApp/components/side_drawer.dart';
import 'package:myWeatherApp/providers/weather.dart';
import 'package:myWeatherApp/screens/home/components/search_bar.dart';
import 'package:provider/provider.dart';
import 'components/next_days_weather.dart';
import 'components/weather_details.dart';
import 'components/weather_summary.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<Weather>(context);
    final curWeather = weatherProvider.currentWeather;

    return Scaffold(
      extendBodyBehindAppBar: true, //'detach' appBar from background
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: SearchBar(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              weatherProvider.getCurrentWeatherData();
            },
          ),
          IconButton(
            icon: Icon(Icons.place),
            onPressed: () {},
          ),
        ],
      ),
      drawer: SideDrawer(),
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  curWeather == null
                      ? WeatherSummary(
                          temperature: 12,
                          summary: 'Cloudy day today',
                          date: DateTime.now(),
                        )
                      : WeatherSummary(
                          temperature: curWeather.temperature,
                          summary: curWeather.summary,
                          date: DateTime.now(),
                        ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              curWeather == null
                  ? WeatherDetails(
                      humidity: 0.49,
                      cloudCover: 0.24,
                      pressure: 1091,
                      windSpeed: 14,
                    )
                  : WeatherDetails(
                      humidity: curWeather.humidity,
                      cloudCover: curWeather.cloudCover,
                      pressure: curWeather.pressure,
                      windSpeed: curWeather.windSpeed,
                    ),
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
