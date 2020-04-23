import 'package:banking/view/widgets/transactionModalSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Transactions extends StatelessWidget {
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
                "Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    // isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => TransactionModalSheet(),
                  );
                  SystemChrome.setSystemUIOverlayStyle(
                    SystemUiOverlayStyle(
                      systemNavigationBarColor: Color(0xFF9191A3),
                    ),
                  );
                },
                child: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
