class HourWeather {
  final List<Hour> hours;

  HourWeather({required this.hours});

  factory HourWeather.fromJson(Map<String, dynamic> json) {
    final List<Hour> hours = [];
    json["forecast"]['forecastday'][0]['hour'].forEach((forecast) => {
          hours.add(
            Hour(
              time: forecast['time'],
              temperature: forecast['temp_c'],
              imageUrl: forecast['condition']['text'],
            ),
          ),
        });

    return HourWeather(hours: hours);
  }
}

class Hour {
  final double temperature;
  final String time;
  final String imageUrl;

  Hour({
    required this.temperature,
    required this.time,
    required this.imageUrl,
  });

  factory Hour.fromJson(Map<String, dynamic> json) {
    return Hour(
      time: json['time'],
      temperature: json['temp_c'],
      imageUrl: json['condition']['icon'],
    );
  }
}
