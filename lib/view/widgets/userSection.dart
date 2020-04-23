import 'package:flutter/material.dart';

class UserSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      alignment: Alignment.centerLeft,
      scale: 0.65,
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "John Doe",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF3F4041),
                fontSize: 25,
              ),
            ),
            Chip(
              backgroundColor: Color(0xFFECFAE5),
              label: Text(
                "Verified User",
                style: TextStyle(color: Color(0xFF41CB00), fontSize: 12),
              ),
              avatar: Container(
                height: 24,
                width: 24,
                child: Transform.scale(
                  scale: 0.9,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Color(0xFF42CB01),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
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
