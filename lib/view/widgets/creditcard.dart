import 'package:flutter/material.dart';


class CreditCard extends StatelessWidget {
  final Color color;
  final IconData iconData;

  CreditCard({this.color, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      width: MediaQuery.of(context).size.width / 1,
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            Icon(
              iconData,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "**** 1890",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "March 2020",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
