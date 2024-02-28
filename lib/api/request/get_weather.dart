import 'dart:convert';

import '../model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeeatherRequest {
  static const URL = "http://api.weatherapi.com/v1/current.json";
  final String api_key;

  WeeatherRequest(this.api_key);

  Future<Weather> getWeather(String cityName) async {
    final response =
        await http.get(Uri.parse('$URL?key=$api_key&q=$cityName&aqi=yes'));

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Server is not response');
    }
  }
}
