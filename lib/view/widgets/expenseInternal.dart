import 'package:banking/view/widgets/progressIndicator.dart';
import 'package:flutter/material.dart';

class ExpenseInternalProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "EXPENSES",
                style: TextStyle(
                  color: Color(0xFF999B9C),
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ProgressIndic(
                color: Color(0xFFFAC347),
                percentage: 0.75, //1.0 = 100%; 0.75 = 75%
              ),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "SAVINGS",
                style: TextStyle(
                  color: Color(0xFF999B9C),
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ProgressIndic(
                color: Color(0xFF45D46D),
                percentage: 0.55, //1.0 = 100%; 0.55 = 55%
              ),
            ],
          ),
        ],
      ),
    );
  }
}
