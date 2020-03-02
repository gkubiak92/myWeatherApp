import 'package:flutter/material.dart';

class DayListTile extends StatelessWidget {
  final String day;
  final int temperature;

  const DayListTile({Key key, this.day, this.temperature}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(this.day),
      title: Icon(Icons.wb_cloudy),
      trailing: Text(
        '${this.temperature.toString()} C',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
