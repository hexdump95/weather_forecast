import 'package:flutter/material.dart';

class TodayForecast extends StatelessWidget {
  static const route = '/today-forecast';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today Forecast'),
        backgroundColor: Theme.of(context).appBarTheme.color,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Icon(Icons.construction, color: Colors.grey[850], size: 300),
      ),
    );
  }
}
