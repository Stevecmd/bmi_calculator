import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color colour; //final makes the property immutable, can only be set once
  final Widget cardChild; //The ? was to get rid of the null default value

  ReusableCard({required this.colour, required this.cardChild}); //required makes the color attribute a mandatory input

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0), //margin between each container
      decoration: BoxDecoration(
        color: colour, //box decoration requires that color must be in it and not at the container level
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
