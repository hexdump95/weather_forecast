import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/temp_today.dart';

class CurrentWeather extends StatefulWidget {
  @override
  _CurrentWeatherState createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  var _myUri = '';

  Future<TempToday> fetchWeather() async {
    final response = await http.get(_myUri);
    if (response.statusCode == 200) {
      return TempToday.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Error!');
    }
  }

  Future<TempToday> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = fetchWeather();
  }

  void _currentWeatherInfo(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/today-forecast',
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _currentWeatherInfo(context),
      child: Column(
        children: [
          Icon(
            Icons.wb_sunny,
            size: 40,
            color: Colors.yellow[700],
          ),
          FutureBuilder<TempToday>(
            future: futureWeather,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      'T: ${snapshot.data.temp.toString()}°C',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ST: ${snapshot.data.tempFeels.toString()}°C',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          )
        ],
      ),
    );
  }
}
