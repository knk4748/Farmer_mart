
import 'package:farmer_mart/paymentPage.dart';
import 'package:flutter/material.dart';

import 'AppModel.dart';

class BuyItemPage extends StatefulWidget {
  @override
  _BuyItemPageState createState() => _BuyItemPageState();
}

class _BuyItemPageState extends State<BuyItemPage> {
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorForBackground,
      appBar: commonAppBar("Logo"),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

              SizedBox(height: 20),
            Text(
              "Buy",
              style: blackBold(),
            ),
            // SizedBox(height: 20),
            SizedBox(height: height * .04),
            GestureDetector(
              onTap: null,
              //TODO fill up to item buy page and double container
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      color: Colors.green,
                      height: width * .4,
                      width: width * .8),

                  // SizedBox(width:width*.1),

                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "ndian Agriculture and Allied industries Industry Report (Size: 678.67 KB )(March, 2020) Agriculture is the primary source of livelihood for about 58 percent of India's population",
                      textAlign: TextAlign.center,
                    ),
                  ),


SizedBox(height:.12*height)
,RaisedButton(
              color: buttonColor,
              child: buttonContainer("BUY", context),
              onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
              },
            )

                  // Container(
                  // width: width*.5,
                  //   child: Text(
                  //       textAlign: TextAlign.center,),
                  // ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
