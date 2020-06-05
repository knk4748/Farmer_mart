import 'package:farmer_mart/AppModel.dart';
import 'package:farmer_mart/actionChoosing.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Thank You!",
              style: TextStyle(fontSize: 44),
            ),
          ),
          RaisedButton(
              color: buttonColor,
              child: buttonContainer("Home", context),
              onPressed: () {
                 Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChooseAction()));
              },
            )
        ],
      ),
    );
  }
}
