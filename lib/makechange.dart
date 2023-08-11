import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  //state is generic datatype , name of class is passed in angular brackets
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _DiceRollerState();
  }
}

//_ means the class is private this will be avaliable to only this file on other file even on importing it
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImg = 'assets/images/1.jpg';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImg = 'assets/images/$diceRoll.jpg';
    });
    //print('Changing img...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImg,
          width: 20,
          height: 20,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.black),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
