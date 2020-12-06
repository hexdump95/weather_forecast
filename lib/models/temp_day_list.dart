import './temp_day.dart';

class TempDayList {
  final List<TempDay> weathers;

  TempDayList({this.weathers});

  factory TempDayList.fromJson(Map<String, dynamic> json) => TempDayList(
        weathers:
            List<TempDay>.from(json['data'].map((x) => TempDay.fromJson(x))),
      );
}
