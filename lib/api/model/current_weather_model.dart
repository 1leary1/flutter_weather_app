class CurrentWeather {
  final String cityName;
  final double temperature;
  final double feelsLike;
  final String condition;
  final String windDir;
  final double windSpeed;
  final double humidity;
  final double pressure;
  final double clouds;

  CurrentWeather({
    required this.cityName,
    required this.temperature,
    required this.feelsLike,
    required this.condition,
    required this.windDir,
    required this.windSpeed,
    required this.humidity,
    required this.pressure,
    required this.clouds,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      cityName: json['location']['name'],
      temperature: json['current']['temp_c'].toDouble(),
      feelsLike: json['current']['feelslike_c'].toDouble(),
      condition: json['current']['condition']['text'],
      windDir: json['current']['wind_dir'],
      windSpeed: json['current']['wind_kph'].toDouble(),
      humidity: json['current']['humidity'].toDouble(),
      pressure: json['current']['pressure_mb'].toDouble(),
      clouds: json['current']['cloud'].toDouble(),
    );
  }
}
