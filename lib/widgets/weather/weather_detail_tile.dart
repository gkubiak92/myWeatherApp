import 'package:flutter/material.dart';

class WeatherDetailTile extends StatelessWidget {
  final String value;
  final String description;
  final IconData icon;

  const WeatherDetailTile({Key key, this.value, this.description, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(this.icon, size: 32, color: Colors.blueAccent),
        Text(
          this.value,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          this.description,
          style: TextStyle(color: Colors.black45),
        ),
      ],
    );
  }
}
