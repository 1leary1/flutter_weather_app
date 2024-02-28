import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weater_app/api/model/weather_model.dart';
import 'package:weater_app/api/request/get_weather.dart';

class CurrentTemp extends StatelessWidget {
  final Weather? weather;

  const CurrentTemp({super.key, required this.weather});

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
                Text(weather?.temperature.toString() ?? 'penis' + ' °C')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
