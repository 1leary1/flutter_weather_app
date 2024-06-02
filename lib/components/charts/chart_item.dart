import 'package:flutter/material.dart';
import 'package:weater_app/api/model/hour_weather_model.dart';

class ChartItem extends StatelessWidget {
  final int index;
  final double height;
  final HourWeather? weatherData;
  const ChartItem(
      {super.key,
      required this.height,
      required this.index,
      required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 30,
              height: 50 + (height.clamp(0, 1) * 50),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      weatherData?.hours[index].temperature
                              .round()
                              .toString() ??
                          '',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
            const Text('1:00'),
            Image.network(
              'http://' +
                  (weatherData?.hours[index].imageUrl ??
                      'http://cdn.weatherapi.com/weather/64x64/day/180.png'),
              width: 30,
              height: 30,
            )
          ],
        ),
        const SizedBox(
          width: 8,
        )
      ],
    );
  }
}
