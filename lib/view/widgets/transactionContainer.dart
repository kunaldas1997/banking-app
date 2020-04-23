import 'package:banking/view/widgets/statusDot.dart';
import 'package:flutter/material.dart';

class TransactionContainer extends StatelessWidget {
  final username;
  final userid;
  final int ammount;
  final bool statusVal;
  TransactionContainer({
    this.ammount,
    this.statusVal,
    this.userid,
    this.username,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white24,
        onTap: () {
          print("Tapped");
        },
        child: Container(
          height: 75,
          width: MediaQuery.of(context).size.width / 1,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Transform.scale(
                  scale: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "$username",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "@$userid",
                          style: TextStyle(
                            color: Colors.white30,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Text(
                      "\$0.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Positioned(
                      top: -7,
                      right: -3,
                      child: StatusDot(
                        status: statusVal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
