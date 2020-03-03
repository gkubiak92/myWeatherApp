import 'package:flutter/material.dart';

import 'weather_detail_tile.dart';

class WeatherDetails extends StatelessWidget {
  final double humidity;
  final double windSpeed;
  final double pressure;
  final double cloudCover;

  const WeatherDetails(
      {Key key, this.humidity, this.windSpeed, this.pressure, this.cloudCover})
      : super(key: key);

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
            children: <Widget>[
              WeatherDetailTile(
                icon: Icons.invert_colors,
                value: humidity == null ? '49%' : '${humidity * 100}%',
                description: 'Humidity',
              ),
              WeatherDetailTile(
                icon: Icons.fast_forward,
                value: windSpeed == null ? '23 km/h' : '$windSpeed km/h',
                description: 'Wind',
              ),
              WeatherDetailTile(
                icon: Icons.filter_hdr,
                value: pressure == null
                    ? '1091 hPa'
                    : '${pressure.toStringAsFixed(0)} hPa',
                description: 'Pressure',
              ),
              WeatherDetailTile(
                icon: Icons.filter_drama,
                value: cloudCover == null ? '24%' : '${cloudCover * 100}%',
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
