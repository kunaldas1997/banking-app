import 'package:flutter/material.dart';

class ProgressIndic extends StatelessWidget {
  final double percentage;
  final Color color;

  ProgressIndic({this.percentage, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 5,
        width: 150,
        child: LinearProgressIndicator(
          semanticsValue: "Test",
          backgroundColor: Color(0xFFF7F7F8),
          value: percentage,
          valueColor: AlwaysStoppedAnimation(color),
        ),
      ),
    );
  }
}
