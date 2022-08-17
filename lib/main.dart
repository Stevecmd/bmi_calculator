import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //Define the default AppBar color
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
            .copyWith(secondary: Colors.pinkAccent),
        scaffoldBackgroundColor: Color(
            0xFF0A0E21), //Testing use of HEX color in the scaffold, the '0XFF' are for transparency
        // textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)) //Changing the color of the secondary text in the body
      ),
      home: InputPage(),
    );
  }
}
