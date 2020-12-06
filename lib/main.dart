import 'package:flutter/material.dart';
import 'package:weather_forecast/common/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
        ),
      ),
    );
  }
}
