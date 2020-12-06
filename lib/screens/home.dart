import 'package:flutter/material.dart';

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
            child: Column(
              children: [
                Icon(
                  Icons.wb_sunny,
                  size: 40,
                  color: Colors.yellow[700],
                ),
                Column(
                  children: [
                    Text(
                      '25 °C',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '22°C',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 350,
          )
        ],
      ),
    );
  }
}
