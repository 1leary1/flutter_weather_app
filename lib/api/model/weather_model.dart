class CurrentWeather {
  final String cityName;
  final double temperature;
  final double feelsLike;
  final String condition;

  CurrentWeather({
    required this.cityName,
    required this.temperature,
    required this.feelsLike,
    required this.condition,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      cityName: json['location']['name'],
      temperature: json['current']['temp_c'].toDouble(),
      feelsLike: json['current']['feelslike_c'].toDouble(),
      condition: json['current']['condition']['text'],
    );
  }
}
