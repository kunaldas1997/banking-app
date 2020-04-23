import 'package:banking/view/widgets/appBar.dart';
import 'package:banking/view/widgets/cards.dart';
import 'package:banking/view/widgets/expenseWidget.dart';
import 'package:banking/view/widgets/transactions.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const id = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 20
              ),
              AppBarWidget(),
              SizedBox(
                height: 10,
              ),
              ExpenseWidget(),
              Cards(),
              SizedBox(
                height: 30,
              ),
              Transactions(),
            ],
          ),
        ),
      ),
    );
  }
}
