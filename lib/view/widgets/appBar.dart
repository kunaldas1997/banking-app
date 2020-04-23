import 'package:banking/view/widgets/userSection.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Transform.scale(
              scale: 1.0,
              alignment: Alignment.topLeft,
              child: CircleAvatar(),
            ),
            UserSection(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
            ),
            Transform.scale(
              scale: 0.8,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEE5C5C),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFEE5C5C),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
