import 'package:flutter/material.dart';
import 'package:myWeatherApp/screens/home/homescreen.dart';
import 'package:provider/provider.dart';

import 'providers/weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Weather()),
      ],
      child: MaterialApp(
        title: 'myWeatherApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
