import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final num _tempMax = 100;
  final num temp;

  Bar(this.temp);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 100,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 0.5),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/health_bar.png'),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Container(
              color: Theme.of(context).backgroundColor,
              width: temp <= 0.0 ? 100.0 : 100.0 - temp / _tempMax * 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
