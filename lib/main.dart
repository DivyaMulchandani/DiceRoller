import 'package:flutter/material.dart';
//import 'package:dice_roller/styletext.dart';
import 'package:dice_roller/makechange.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 156, 250, 250),
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key) ;
  const GradientContainer({
    super.key,
    /*required this.colors*/
  });

  /*final List<Color> colors;*/
  // var activeDiceImg = 'assets/images/one.jpg';

  // void rollDice() {
  //   activeDiceImg = 'assets/images/two.jpg';
  //   print('Changing img...');
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.cyanAccent,
            Colors.cyan,
            Color.fromARGB(255, 0, 124, 212),
            Color.fromARGB(255, 16, 1, 100),
            Color.fromARGB(255, 26, 4, 80)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        //child: StyleText('Hello Divya !!')
        child: DiceRoller(),
      ),
    );
  }
}
