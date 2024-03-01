import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weater_app/api/model/weather_model.dart';

class CurrentTemp extends StatelessWidget {
  final CurrentWeather? weather;

  const CurrentTemp({super.key, required this.weather});

  String getWeatherAnimation(String? condition) {
    if (condition == null) return 'assets/sunny_and_clouds.json';

    switch (condition.toLowerCase()) {
      case 'sunny':
        return 'assets/sunny.json';
      case 'clear':
        return 'assets/sunny.json';
      case 'heavy rain':
        return 'assets/storm.json';
      default:
        return 'assets/sunny_and_clouds.json';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                weather?.condition ?? '',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Lottie.asset(
                    getWeatherAnimation(weather?.condition),
                    width: 125,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        '${weather?.temperature.round().toString() ?? 'loading...'} °',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'Feels like ${weather?.feelsLike.round().toString() ?? ' '}',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
