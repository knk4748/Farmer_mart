import 'package:farmer_mart/AppModel.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar("Login"),
      backgroundColor: colorForBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //  Text("Create a SubjectName"),
          SizedBox(height: 40),
          Container(
              margin: EdgeInsets.only(left: 13),
              child: Text("Name",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w300))),

          Container(
            margin: EdgeInsets.fromLTRB(
                13, 0, MediaQuery.of(context).size.width * .38, 0),
            padding: EdgeInsets.only(top: 20),
            child: Form(
              // key: _formKntey,
              autovalidate: true,
              child: TextFormField(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 13, top: 20),
            child: Text(
              "Contact No.",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                13, 0, MediaQuery.of(context).size.width * .38, 0),
            padding: EdgeInsets.only(top: 20),
            child: Form(
              // key: _formKey,

              autovalidate: true,
              child: TextFormField(
                keyboardType: TextInputType.phone,
              ),
            ),
          ),

          GestureDetector(
            child: Container(
              // alignment: Alignment.centerLeft,
              color: buttonColor,
              width: MediaQuery.of(context).size.width * .5,
              // margin: EdgeInsets.only(top: 25,right:MediaQuery.of(context).size.width*.38),
              margin: EdgeInsets.only(left: 13, top: 50),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Sumbit",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            onTap: () {
              
            },
            //TODO add navigator push to next page
          )
        ],
      ),
    );
  }
}
