import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:myWeatherApp/api/api_data.dart';
import 'package:myWeatherApp/providers/models/current_weather.dart';

class Weather with ChangeNotifier {
  CurrentWeather _currentWeather = null;

  CurrentWeather get currentWeather {
    return _currentWeather;
  }

  void setCurrentWeather(CurrentWeather currentWeather) {
    _currentWeather = currentWeather;
  }

  Future<void> getCurrentWeatherData() async {
    const url = ApiData.apiUrl;
    final response = await http.get(url);
    final responseData = json.decode(response.body);
    print(responseData);
    notifyListeners();
  }
}
