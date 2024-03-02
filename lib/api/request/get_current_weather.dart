import 'dart:convert';

import 'package:http/http.dart';

import '../model/current_weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherApiRequest {
  static const url = "http://api.weatherapi.com/v1/current.json";
  final String apiKey;

  WeatherApiRequest(this.apiKey);

  Future<Response> getResponse(String cityName) async {
    final response =
        await http.get(Uri.parse('$url?key=$apiKey&q=$cityName&aqi=yes'));
    return response;
  }

  Future<CurrentWeather> getCurrentWeather(Response response) async {
    if (response.statusCode == 200) {
      return CurrentWeather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Server is not response');
    }
  }
}
