import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress}); //required makes the given attribute a mandatory input

  final Color colour; //final makes the property immutable, can only be set once
  final Widget cardChild; //The ? was to get rid of the null default value
  final Function onPress; //Adding the ? and removing required from line 4 did the trick

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, //Added the brackets on my own and the null check
      child: Container(
        margin: const EdgeInsets.all(15.0), //margin between each container
        decoration: BoxDecoration(
          color: colour, //box decoration requires that color must be in it and not at the container level
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
