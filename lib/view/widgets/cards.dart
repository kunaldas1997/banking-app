import 'package:banking/view/widgets/creditcard.dart';
import 'package:flutter/material.dart';


class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Cards",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  //  showModalBottomSheet(context: context, builder: (context) =>  BottomCardFeeder());
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF999B9C),
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child: Container(
                        color: Colors.white,
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF999B9C),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CreditCard(color: Color(0xFF453FE7), iconData: Icons.ac_unit),
          SizedBox(
            height: 30,
          ),
          CreditCard(color: Color(0xFF4CB2D8), iconData: Icons.accessible),
        ],
      ),
    );
  }
}
