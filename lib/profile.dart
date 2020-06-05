

import 'package:farmer_mart/actionChoosing.dart';
import 'package:flutter/material.dart';
import 'AppModel.dart';
import 'SelectLanguage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar("Logo"),
      backgroundColor: colorForBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              "Profile",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w300),
            ),
          ),
          //  Text("Create a SubjectName"),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 13),
            child: Text(
              "Name",
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.w300),
            ),
          ),

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
              "Contact",
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
          SizedBox(height:20),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SelectLanguage(),
              ),
            ),
            child: GestureDetector(
              onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>SelectLanguage(),),),
                          child: Container(
                margin: EdgeInsets.only(left: 13, top: 20),
                child: Text(
                  "Select Language",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                  ),
                ),
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
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            onTap: () {
Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>ChooseAction()));
            },
            
          )
        ],
      ),
    );
  }
}
