import 'package:flutter/material.dart';

import 'AppModel.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
              "History",
              style: blackBold(),
            ),
            SizedBox(height: 20),
            
            SizedBox(height: height * .1),
            GestureDetector(
              onTap: null,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            color: Colors.green,
                            height: width * .3,
                            width: width * .3),
                        RaisedButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text("Delete"),
                        ),
                      ],
                    ),

                    // SizedBox(width:width*.1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Text(
                            "ndian Agriculture and Allied industries Industry Report (Size: 678.67 KB )",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: width * .5,
                          child: Text(
                            "(March, 2020) Agriculture is the primary source of livelihood for about 58 percent of India's population",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height:30),
            GestureDetector(
              onTap: null,
             
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            color: Colors.green,
                            height: width * .3,
                            width: width * .3),
                        RaisedButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text("Delete"),
                        ),
                      ],
                    ),

                    // SizedBox(width:width*.1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Text(
                            "ndian Agriculture and Allied industries Industry Report (Size: 678.67 KB )",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: width * .5,
                          child: Text(
                            "(March, 2020) Agriculture is the primary source of livelihood for about 58 percent of India's population",
                            textAlign: TextAlign.center,
                          ),
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
