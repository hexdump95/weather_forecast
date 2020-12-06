import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Days extends StatelessWidget {
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
          child: Container(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Text('25°C MAX'),
                        const SizedBox(height: 5),
                        Text('10°C MIN'),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ],
                );
              },
              itemCount: 6,
            ),
          )),
    );
  }
}
