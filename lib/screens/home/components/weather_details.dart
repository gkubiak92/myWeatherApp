import 'package:flutter/material.dart';

import 'weather_detail_tile.dart';

class WeatherDetail extends StatelessWidget {
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
                value: '49%',
                description: 'Humidity',
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
