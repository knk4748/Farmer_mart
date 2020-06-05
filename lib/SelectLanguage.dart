import 'package:farmer_mart/AppModel.dart';
import 'package:farmer_mart/actionChoosing.dart';
import 'package:flutter/material.dart';

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
//  final _scaffolfdKey = GlobalKey<ScaffoldState>();
  bool langBool1 = false;
  bool langBool2 = false;
  bool langBool3 = false;

  langSave() {
    if (langBool2 || langBool3 || langBool1) {
      if (langBool1 == true) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChooseAction()));
      } else {
        // return AlertDialog(content: Text("App is only in English for now"),);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar("Choose language"),
      backgroundColor: colorForBackground,
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 80),
                      Text("English",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(height: 30),
                      // SizedBox(width: 60),
                      Text(
                        "Hindi",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 30),
                      // SizedBox(width: 60),
                      Text(
                        "Marathi",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                SizedBox(width: 60),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 75),
                    Checkbox(
                        value: langBool1,
                        // materialTapTargetSize: MaterialTapTargetSize.padded,
                        onChanged: (bool x) {
                          setState(() {
                            langBool1 = x;
                            langBool2 = false;
                            langBool3 = false;
                          });
                        }),
                    SizedBox(height: 30),
                    Checkbox(
                        value: langBool2,
                        // materialTapTargetSize: MaterialTapTargetSize.padded,
                        onChanged: (bool x) {
                          setState(() {
                            langBool1 = false;
                            langBool2 = x;
                            langBool3 = false;
                          });
                        }),
                    SizedBox(height: 30),
                    Checkbox(
                      value: langBool3,
                      // materialTapTargetSize: MaterialTapTargetSize.padded,
                      onChanged: (bool x) {
                        setState(() {
                          langBool1 = false;
                          langBool2 = false;
                          langBool3 = x;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .25),
            RaisedButton(
              color: buttonColor,
              child: buttonContainer("SAVE", context),
              onPressed: () {
                langSave();
              },
            )
          ],
        ),
      ),
    );
  }
}
