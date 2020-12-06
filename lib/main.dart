import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';

import './common/theme.dart';
import './screens/error_page.dart';
import './screens/home.dart';
import './screens/today_forecast.dart';

void main() =>
    initializeDateFormatting('es_AR', null).then((_) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: appTheme,
      routes: {
        '/': (context) => Home(),
        TodayForecast.route: (context) => TodayForecast(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => ErrorPage()),
    );
  }
}
