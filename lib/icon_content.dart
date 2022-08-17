//custom icon content widget.
import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
fontSize: 18.0,
color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {

  IconContent({required this.icon, required this.label});  //This is a Constructor

  final IconData icon;        //Properties
  final String label;         //Properties

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, //centre our column in the parent
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,                 //icon size
        ),
        const SizedBox(
          height: 15.0,            //size of gap between icon and text
        ),
        Text(
          label, style: labelTextStyle,
        ),
      ],
    );
  }
}