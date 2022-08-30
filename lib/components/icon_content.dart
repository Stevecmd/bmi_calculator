//custom icon content widget.
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label}); //This is a Constructor

  final IconData icon; //Properties
  final String label; //Properties

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, //centre our column in the parent
      children: <Widget>[
        Icon(
          icon,
          size: 80.0, //icon size
        ),
        SizedBox(
          height: 15.0, //size of gap between icon and text
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
