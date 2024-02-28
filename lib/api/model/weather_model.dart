class Weather {
  final String cityName;
  final String temperature;
  final String feelsLike;
  final String condition;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.feelsLike,
    required this.condition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['location']['name'],
      temperature: json['current']['temp_c'],
      feelsLike: json['current']['feelslike_c'],
      condition: json['current']['condition']['text'],
    );
  }
}
