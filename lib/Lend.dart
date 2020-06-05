import 'package:farmer_mart/ThankYou.dart';
import 'package:flutter/material.dart';

import 'AppModel.dart';

class LendPage extends StatefulWidget {
  @override
  _LendPageState createState() => _LendPageState();
}

class _LendPageState extends State<LendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorForBackground,
      appBar: commonAppBar("Logo"),
      body: Container(
        padding: EdgeInsets.fromLTRB(22, 0, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Center(
              child: Text(
                "Lend",
                style: blackBold(),
              ),
            ),
            SizedBox(height: 65),
            Text("Upload Image",style: blackBold(),),
            SizedBox(height: 40),
            Text("product desciption :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            Text(
                "ndian Agriculture and Allied industries Industry Report (Size: 678.67 KB  ",style:TextStyle(fontSize: 18)),
            Text(
                "(March, 2020) Agriculture is the primary source of livelihood for about 58 percent of India's population",style:TextStyle(fontSize: 18)),
            SizedBox(height: 40),
              Text("Contact details:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text(
                "Address : xyz",style:TextStyle(fontSize: 18)),
            Text(
                "Phone no. : 1234567890",style:TextStyle(fontSize: 18)),
                SizedBox(height:60),
            GestureDetector(
            child: Center(
              child: Container(
                // alignment: Alignment.centerLeft,
                color: buttonColor,
                width: MediaQuery.of(context).size.width * .5,
                // margin: EdgeInsets.only(top: 25,right:MediaQuery.of(context).size.width*.38),
                margin: EdgeInsets.only(left: 13, top: 50),
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Upload",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
            onTap: () {
              
       Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThankYou())); 
            },
          )
          ],
        ),
      ),
    );
  }
}
