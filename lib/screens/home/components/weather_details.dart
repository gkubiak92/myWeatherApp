import 'package:flutter/material.dart';
import 'package:myWeatherApp/providers/models/current_weather.dart';

import 'weather_detail_tile.dart';

class WeatherDetails extends StatelessWidget {
  final CurrentWeather weather;

  const WeatherDetails({Key key, this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetWidth = MediaQuery.of(context).size.width - 40;

    return Container(
      height: 100,
      width: widgetWidth,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: weather == null
                ? <Widget>[Text('Please choose location')]
                : <Widget>[
                    WeatherDetailTile(
                      icon: Icons.invert_colors,
                      value: '${weather.humidity * 100}%',
                      description: 'Humidity',
                    ),
                    WeatherDetailTile(
                      icon: Icons.fast_forward,
                      value: '${weather.windSpeed} km/h',
                      description: 'Wind',
                    ),
                    WeatherDetailTile(
                      icon: Icons.filter_hdr,
                      value: '${weather.pressure.toStringAsFixed(0)} hPa',
                      description: 'Pressure',
                    ),
                    WeatherDetailTile(
                      icon: Icons.filter_drama,
                      value: '${weather.cloudCover * 100}%',
                      description: 'Cloudiness',
                    ),
                    WeatherDetailTile(
                      icon: Icons.fast_forward,
                      value: '23 km/h',
                      description: 'Wind',
                    ),
                    WeatherDetailTile(
                      icon: Icons.filter_hdr,
                      value: '1091 hPa',
                      description: 'Pressure',
                    ),
                    WeatherDetailTile(
                      icon: Icons.filter_drama,
                      value: '24%',
                      description: 'Cloudiness',
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
