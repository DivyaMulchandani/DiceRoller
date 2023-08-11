import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  //const StyleText(String text, {super.key}): outputtext=text ;
  const StyleText(this.outputtext, {super.key});

  final String outputtext;

  @override
  Widget build(context) {
    return Text(
      outputtext,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.brown,
      ),
    );
  }
}
