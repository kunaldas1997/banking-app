import "package:flutter/material.dart";


class StatusDot extends StatelessWidget {

  final bool status;
  StatusDot({this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    if(status == true ){
      color = Colors.green;
    } else {
      color = Colors.red;
    }
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }
}