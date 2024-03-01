import 'dart:convert';

import '../model/current_weather_model.dart';
import 'package:http/http.dart' as http;

class WeeatherRequest {
  static const url = "http://api.weatherapi.com/v1/current.json";
  final String apiKey;

  WeeatherRequest(this.apiKey);

  Future<CurrentWeather> getWeather(String cityName) async {
    final response =
        await http.get(Uri.parse('$url?key=$apiKey&q=$cityName&aqi=yes'));

    if (response.statusCode == 200) {
      return CurrentWeather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Server is not response');
    }
  }
}
