import 'package:farmer_mart/AppModel.dart';
import 'package:flutter/material.dart';

import 'BuyPage.dart';

class ChooseAction extends StatefulWidget {
  @override
  _ChooseActionState createState() => _ChooseActionState();
}

class _ChooseActionState extends State<ChooseAction> {
  bool isLend = false;
  bool isSell = false;
  bool isBuy = false;
  bool isBorrow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorForBackground,
      appBar: commonAppBar("Logo"),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 80),
                        Text("Buy",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 30),
                        // SizedBox(width: 60),
                        Text(
                          "Sell",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 30),
                        // SizedBox(width: 60),
                      ]),
                  SizedBox(width: 60),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 75),
                      Checkbox(
                          value: isBuy,
                          // materialTapTargetSize: MaterialTapTargetSize.padded,
                          onChanged: (bool x) {
                            setState(() {
                              isBuy = x;
                              isSell = false;
                              isLend = false;
                              isBorrow = false;
                            });
                          }),
                      SizedBox(height: 30),
                      Checkbox(
                          value: isSell,
                          // materialTapTargetSize: MaterialTapTargetSize.padded,
                          onChanged: (bool x) {
                            setState(() {
                              isBuy = false;
                              isSell = x;
                              isLend = false;
                              isBorrow = false;
                            });
                          }),
                      SizedBox(height: 30),
                    ],
                  ),
                ],
              ),
              Container(
                child: Text(
                  "Rent",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height:30)
             , Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Checkbox(
                      value: isLend,
                      // materialTapTargetSize: MaterialTapTargetSize.padded,
                      onChanged: (bool x) {
                        setState(() {
                          isBuy = false;
                          isSell = false;
                          isLend = x;
                          isBorrow = false;
                        });
                      }),
                  Text("Lend",style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w400,
                          ),),
                  Checkbox(
                    value: isBorrow,
                    // materialTapTargetSize: MaterialTapTargetSize.padded,
                    onChanged: (bool x) {
                      setState(() {
                        isBuy = false;
                        isSell = false;
                        isLend = false;
                        isBorrow = x;
                      });
                    },
                  ),
                  Text("Borrow",style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(width: 50),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * .25),
              RaisedButton(
                color: buttonColor,
                child: buttonContainer("NEXT", context),
                onPressed: () {
                  if(isBuy){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BuyPage(),),);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
