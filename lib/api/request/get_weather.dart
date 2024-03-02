import 'dart:convert';
import 'package:http/http.dart';
import '../model/current_weather_model.dart';
import 'package:http/http.dart' as http;
import '../model/hour_weather_model.dart';

class WeatherApiRequest {
  static const url = "http://api.weatherapi.com/v1/forecast.json";
  final String apiKey;

  WeatherApiRequest(this.apiKey);

  Future<Response> getResponse(String cityName) async {
    final response = await http.get(
        Uri.parse('$url?key=$apiKey&q=$cityName&days=1&aqi=yes&alerts=yes'));
    return response;
  }

  Future<CurrentWeather> getCurrentWeather(Response response) async {
    if (response.statusCode == 200) {
      return CurrentWeather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Server is not response');
    }
  }

  Future<HourWeather> getHourWeather(Response response) async {
    if (response.statusCode == 200) {
      return HourWeather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Server is not response');
    }
  }
}
