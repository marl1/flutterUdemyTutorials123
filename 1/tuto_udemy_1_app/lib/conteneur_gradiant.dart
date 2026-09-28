import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tuto_udemy_1_app/dice_roller.dart';
import 'package:tuto_udemy_1_app/styled_text.dart';

const beginAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class ConteneurGradiant extends StatelessWidget {
  const ConteneurGradiant({
    super.key,
    required this.beginColor,
    required this.endColor,
  });

  final Color beginColor;
  final Color endColor;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: beginAlignment,
          end: endAlignment,
          colors: [beginColor, endColor],
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
