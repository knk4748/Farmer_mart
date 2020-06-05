

import 'package:farmer_mart/AppModel.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  BuyPage({Key key}) : super(key: key);

  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
 
  @override
  Widget build(BuildContext context) {
 final double width = MediaQuery.of(context).size.width;
 final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorForBackground,
      appBar: commonAppBar("Logo"),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              "Buy",
              style: blackBold(),
            ),
            SizedBox(height:20),
            Padding(
              padding: EdgeInsets.only(left: width *.6),
              child: Container(
                color: Colors.grey,
                width: width*.5,
                alignment: Alignment.center,
                child: Text("Search Result"),
                padding: EdgeInsets.all(6),
              ),
            ),
            SizedBox(height:height*.1),
            GestureDetector(onTap: null,
            //TODO fill up to item buy page and doublr container 
                          child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                     
                    Container(color: Colors.green, height: width*.3, width: width*.3),

                    // SizedBox(width:width*.1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                        width: MediaQuery.of(context).size.width*.5,
                          child: Text(
                              "ndian Agriculture and Allied industries Industry Report (Size: 678.67 KB )",textAlign: TextAlign.center,),
                        ),
                        Container(
                        width: width*.5,
                          child: Text(
                              "(March, 2020) Agriculture is the primary source of livelihood for about 58 percent of India's population",textAlign: TextAlign.center,),
                        ),
                       
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
