import 'package:flutter/material.dart';

class RowTemp extends StatelessWidget {
  final num tempMax;
  final num tempMin;

  RowTemp(this.tempMax, this.tempMin);

  Widget _buildRow(BuildContext context, num temp, String text) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Text(
          '${temp.toString()} °C $text',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        _buildRow(context, tempMax, 'MAX'),
        const SizedBox(height: 5),
        _buildRow(context, tempMin, 'MIN'),
        const SizedBox(height: 12),
      ],
    );
  }
}
