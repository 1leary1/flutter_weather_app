import 'package:flutter/material.dart';
import 'package:weater_app/components/charts/chart_item.dart';
import '../../api/model/hour_weather_model.dart';

class Chart extends StatelessWidget {
  final List<HourWeather> weatherData;
  const Chart({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weatherData.length,
        itemBuilder: (context, index) =>
            ChartItem(height: weatherData[index].temperature),
      ),
    );
  }
}
