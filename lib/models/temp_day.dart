class TempDay {
  final num tempMax;
  final num tempMin;

  TempDay({this.tempMax, this.tempMin});

  factory TempDay.fromJson(Map<String, dynamic> json) => TempDay(
        tempMax: json['max_temp'],
        tempMin: json['min_temp'],
      );
}
