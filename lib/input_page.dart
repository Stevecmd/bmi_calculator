import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0x3F316EFF);
const activeCardColour = Color(0xEB1350C8);
const inactiveCardColour = Color(0xEB1820D5);

class InputPage extends StatefulWidget {
  Color maleCardColor = inactiveCardColour;
  Color femaleCardColor = inactiveCardColour;

  //1 is male and 2 is female
  //void updateColour is a method
  void updateColour(int gender) {
    //male card pressed
    if (gender == 1) {
      if (maleCardColor == inactiveCardColour) {
        maleCardColor == activeCardColour;
        femaleCardColor == inactiveCardColour;
      } else {
        maleCardColor == inactiveCardColour;
      }
    }
    //female card pressed
    if (gender == 2){
      if (femaleCardColor == inactiveCardColour) {
        femaleCardColor == activeCardColour;
        maleCardColor == inactiveCardColour;
      } else {
        femaleCardColor == inactiveCardColour;
      }
    }
  }

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout experiments'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                      colour: inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALES',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'MALES AND FEMALES',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}


