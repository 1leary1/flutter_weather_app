import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weater_app/api/model/weather_model.dart';
import 'package:weater_app/api/request/get_weather.dart';

class CurrentTemp extends StatefulWidget {
  const CurrentTemp({super.key});

  @override
  State<CurrentTemp> createState() => _CurrentTempState();
}

class _CurrentTempState extends State<CurrentTemp> {
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
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).colorScheme.surface),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Clouds',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Row(
              children: [
                Lottie.asset(
                  'assets/storm.json',
                  width: 125,
                ),
                Text(_weather?.temperature.toString() ?? 'penis' + ' °C')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
