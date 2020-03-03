import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:myWeatherApp/api/api_data.dart';
import 'package:myWeatherApp/providers/models/current_weather.dart';

class Weather with ChangeNotifier {
  CurrentWeather _currentWeather;

  CurrentWeather get currentWeather {
    return _currentWeather;
  }

  void setCurrentWeather(CurrentWeather currentWeather) {
    _currentWeather = currentWeather;
  }

  Future<void> getCurrentWeatherData() async {
    const url = ApiData.apiUrl;
    final response = await http.get(url);
    final resData = json.decode(response.body);
    final cw = resData['currently'];
    final curWeather = CurrentWeather(
      latitude: resData['latitude'],
      longitude: resData['longitude'],
      timezone: resData['timezone'],
      cloudCover: cw['cloudCover'].toDouble(),
      humidity: cw['humidity'],
      icon: cw['icon'],
      pressure: cw['pressure'].toDouble(),
      summary: cw['summary'],
      temperature: cw['temperature'],
      windSpeed: cw['windSpeed'],
    );
    setCurrentWeather(curWeather);
    notifyListeners();
  }
}
