class TempToday {
  final num temp;
  final num tempFeels;
  final num humidity;
  final num windSpeed;

  TempToday({
    this.temp,
    this.tempFeels,
    this.humidity,
    this.windSpeed,
  });

  factory TempToday.fromJson(Map<String, dynamic> json) {
    return TempToday(
      temp: json['main']['temp'],
      tempFeels: json['main']['feels_like'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'],
    );
  }
}
