import 'package:flutter/material.dart';

import '../widgets/current_weather.dart';
import '../widgets/days.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast'),
        backgroundColor: Theme.of(context).appBarTheme.color,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CurrentWeather(),
          ),
          Days(),
        ],
      ),
    );
  }
}
