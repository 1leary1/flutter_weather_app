import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/src/response.dart';
import 'package:weater_app/api/model/current_weather_model.dart';
import 'package:weater_app/api/model/hour_weather_model.dart';
import 'package:weater_app/components/charts/chart.dart';
import 'package:weater_app/components/charts/chart_item.dart';
import 'package:weater_app/components/current_stats.dart';
import 'package:weater_app/components/currernt_temp.dart';
import '../api/request/get_current_weather.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({super.key});

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  final _request = WeatherApiRequest('25e752346fd84b08b2082324242702');
  CurrentWeather? _weather;

  final List<HourWeather> hourWeather = [
    HourWeather(
        temperature: 0.1,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.3,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.5,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.3,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.1,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.3,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.5,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.3,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.1,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.3,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.5,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
    HourWeather(
        temperature: 0.3,
        time: 'ddd',
        imageUrl: '//cdn.weatherapi.com/weather/64x64/night/176.png'),
  ];

  _fetchWeather() async {
    try {
      final weather = await _request
          .getCurrentWeather(_request.getResponse("Omsk") as Response);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text("Right now", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        CarouselSlider(
          items: [
            CurrentTemp(
              weather: _weather,
            ),
            CurrentStats(
              weather: _weather,
            ),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            enlargeCenterPage: true,
            height: 200,
            enableInfiniteScroll: false,
            initialPage: 0,
          ),
        ),
        const SizedBox(height: 12),
        //тут надо индикатор
        Text("By the clock", style: Theme.of(context).textTheme.titleLarge),
        Chart(weatherData: hourWeather),
        const SizedBox(height: 12),
        Text("This week", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
