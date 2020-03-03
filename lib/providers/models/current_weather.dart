import 'package:flutter/foundation.dart';

class CurrentWeather with ChangeNotifier {
  @required
  final double latitude;
  @required
  final double longitude;
  @required
  final String timezone;
  @required
  final String summary;
  @required
  final String icon;
  @required
  final double temperature;
  @required
  final double humidity;
  @required
  final double pressure;
  @required
  final double windSpeed;
  @required
  final double cloudCover;

  CurrentWeather({
    this.latitude,
    this.longitude,
    this.timezone,
    this.summary,
    this.icon,
    this.temperature,
    this.humidity,
    this.pressure,
    this.windSpeed,
    this.cloudCover,
  });
}
