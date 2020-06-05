// import 'dart:html';

import 'package:farmer_mart/AppModel.dart';
import 'package:flutter/material.dart';

import 'ThankYou.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
//  final _scaffolfdKey = GlobalKey<ScaffoldState>();
  bool bool1 = false;
  bool bool2 = false;
  bool bool3 = false;

langSave(){
  if(bool2 || bool3 || bool1){

  Navigator.push(context, MaterialPageRoute(builder: (context)=>ThankYou() ));
}
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar("Payment Gateway"),
      backgroundColor: colorForBackground,
      body: Center(
        child: Column(

          children: <Widget>[
            Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
SizedBox(height:80),
                  Text("Credit Card",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w400,
                      )),SizedBox(height:30),
                  // SizedBox(width: 60),
                  Text(
                    "Debit Card",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                    ),
                  ),SizedBox(height:30),
                  // SizedBox(width: 60),
                  Text(
                    "Cash",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                
                ]),
                  SizedBox(width: 60)
                ,Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[SizedBox(height: 75),
                    Checkbox(
                        value: bool1,
                        // materialTapTargetSize: MaterialTapTargetSize.padded,
                        onChanged: (bool x) {
                          setState(() {
                            bool1 = x;
                            bool2 = false;
                            bool3 = false;
                          });
                        }),
                        SizedBox(height:30),
                    Checkbox(
                        value: bool2,
                        // materialTapTargetSize: MaterialTapTargetSize.padded,
                        onChanged: (bool x) {
                          setState(() {
                             bool1 = false;
                            bool2 = x;
                            bool3 = false;
                          });
                        }),SizedBox(height:30),
                    Checkbox(
                      value: bool3,
                      // materialTapTargetSize: MaterialTapTargetSize.padded,
                      onChanged: (bool x) {
                        setState(() {
                           bool1 = false;
                            bool2 = false;
                            bool3 = x;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          SizedBox(height:MediaQuery.of(context).size.height *.25),
          RaisedButton(color: buttonColor,child: buttonContainer("SAVE", context),onPressed: (){
            langSave();






          },)
          
          
          ],
        ),
      ),
    );
  }
}
