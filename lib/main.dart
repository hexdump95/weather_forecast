import 'package:flutter/material.dart';
import 'package:weather_forecast/common/theme.dart';

import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: appTheme,
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
