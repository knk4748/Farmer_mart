import 'package:farmer_mart/AppModel.dart';
import 'package:flutter/material.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorForBackground,
      appBar: commonAppBar("Logo"),
      body: Column(
        children: <Widget>[
          Text(
            "Thank You!",
            style: TextStyle(fontSize: 44),
          ),
          RaisedButton(
              color: buttonColor,
              child: buttonContainer("SAVE", context),
              onPressed: () {
                // TODO go to home
              },
            )
        ],
      ),
    );
  }
}
