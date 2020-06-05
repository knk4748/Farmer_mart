import 'package:flutter/material.dart';

AppBar commonAppBar(String title,) {
  return AppBar(
    backgroundColor: _getColorFromHex("#68B6F8"),
    
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    ),
  );
}

Color _getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;

  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }else return Colors.yellow;

}


Color colorForBackground = _getColorFromHex("#D9E5FA");


Color buttonColor = _getColorFromHex("#2B4B8F");
Container buttonContainer(String text, BuildContext context) {
  return Container(
    // color:Colors.blue,        
    // padding: EdgeInsets.all(5),
    width: MediaQuery.of(context).size.width * .5,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize:40,
          color: Colors.white,
        ),
      ),
    ),
  );
}


TextStyle blackBold(){
  return TextStyle(fontSize: 40,);
}