import 'package:banking/view/widgets/transactionContainer.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          TransactionContainer(username: "Kunal Das", userid: "kunaldas1107", statusVal: true,),
          TransactionContainer(username: "John Doe", userid: "abc123", statusVal: false,),
          TransactionContainer(username: "Jedd", userid: "jedef", statusVal: true,),
          TransactionContainer(username: "Alex G", userid: "alexg", statusVal: false,),
          TransactionContainer(username: "Swarna", userid: "swarna", statusVal: false,),
          TransactionContainer(username: "Ed", userid: "edS", statusVal: true,),
          TransactionContainer(username: "Jake", userid: "jaked", statusVal: true,),
          TransactionContainer(username: "David", userid: "davez", statusVal: false,),
        ],
      ),
    );
  }
}
