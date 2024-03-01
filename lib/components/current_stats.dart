import 'package:flutter/material.dart';
import 'package:weater_app/api/model/current_weather_model.dart';
import 'package:weater_app/components/info_text.dart';

class CurrentStats extends StatelessWidget {
  final CurrentWeather? weather;

  const CurrentStats({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoText(
                        title: "Wind",
                        subtitle:
                            '${weather?.windDir ?? ''} ${weather?.windSpeed ?? 'No data'} km/h',
                      ),
                      InfoText(
                        title: "Humidity",
                        subtitle: '${weather?.humidity.round() ?? 'No data'}%',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoText(
                        title: "Pressure",
                        subtitle:
                            '${weather?.pressure.round() ?? 'No data'} mb',
                      ),
                      InfoText(
                        title: "Clouds",
                        subtitle: '${weather?.clouds.round() ?? 'No data'}%',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
