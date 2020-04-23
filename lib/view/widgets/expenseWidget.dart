import 'package:banking/view/widgets/expenseInternal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10,),
                  child: Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Color(0xFF999B9C),
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "\$",
                          style: ThemeData().textTheme.headline1.copyWith(
                                color: Color(0xFF999B9C),
                                fontSize: 30,
                              ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "5142.21",
                      style: ThemeData().textTheme.headline1.copyWith(
                            fontSize: 60,
                            color: Color(0xFF3D415B),
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpenseInternalProgressBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
