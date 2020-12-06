import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../models/temp_day.dart';
import '../models/temp_day_list.dart';
import './row_temp.dart';

class Days extends StatefulWidget {
  @override
  _DaysState createState() => _DaysState();
}

class _DaysState extends State<Days> {
  var _myUri2 = '';

  Future<List<TempDay>> fetchWeather() async {
    final response = await http.get(_myUri2);
    if (response.statusCode == 200) {
      var weatherArray =
          TempDayList.fromJson(jsonDecode(response.body)).weathers;
      return weatherArray;
    } else {
      throw Exception('Error!');
    }
  }

  Future<List<TempDay>> futureWeatherList;

  @override
  void initState() {
    super.initState();
    futureWeatherList = fetchWeather();
  }

  String _currentDay(int index) {
    return DateFormat.E('es_AR')
        .format(DateTime.now().add(Duration(days: index)))
        .toUpperCase()
        .substring(0, 3);
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 350,
        width: 300,
        child: FutureBuilder<List<TempDay>>(
            future: futureWeatherList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            child: FittedBox(
                              child: Text(
                                _currentDay(index),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          RowTemp(snapshot.data[index].tempMax,
                              snapshot.data[index].tempMin),
                        ],
                      );
                    },
                    itemCount: snapshot.data.length,
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Container();
            }),
      ),
    );
  }
}
