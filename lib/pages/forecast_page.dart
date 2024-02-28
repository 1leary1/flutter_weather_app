//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:weater_app/api/model/weather_model.dart';
import 'package:weater_app/components/currernt_temp.dart';

import '../api/request/get_weather.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({super.key});

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  final _request = WeeatherRequest('25e752346fd84b08b2082324242702');
  Weather? _weather;

  _fetchWeather() async {
    try {
      final weather = await _request.getWeather("Omsk");
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
            Container(
              color: Colors.pink,
            ),
          ],
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: 250,
            enableInfiniteScroll: false,
            initialPage: 0,
          ),
        )
      ],
    );
  }
}
