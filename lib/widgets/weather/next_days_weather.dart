import 'package:flutter/material.dart';
import 'package:myWeatherApp/widgets/weather/day_list_tile.dart';

class NextDaysWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0), //avoid default top padding
      children: <Widget>[
        DayListTile(day: 'Monday', temperature: 24),
        DayListTile(day: 'Tuesday', temperature: 12),
        DayListTile(day: 'Wednesday', temperature: 10),
        DayListTile(day: 'Thursday', temperature: 13),
        DayListTile(day: 'Friday', temperature: 15),
        DayListTile(day: 'Saturday', temperature: 19),
        DayListTile(day: 'Sunday', temperature: 20),
      ],
    );
  }
}
