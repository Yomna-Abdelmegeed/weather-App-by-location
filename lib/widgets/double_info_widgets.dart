import 'package:flutter/material.dart';

class DoubleInfoWidgets extends StatelessWidget {
  const DoubleInfoWidgets({super.key, required this.title, required this.num});
  final String title;
  final dynamic num;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        Text(
          '$num',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
