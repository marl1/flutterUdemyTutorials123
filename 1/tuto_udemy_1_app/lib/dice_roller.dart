import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});


  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer =  Random();
  var diceNbr = 1;

  void rollDice() {
    setState(() {
          diceNbr = randomizer.nextInt(6) + 1; 
    });
  }

  @override
  Widget build(ctx) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/img/dice-$diceNbr.png',
            ),

            OutlinedButton(
              onPressed: rollDice,
              child: const Text("Lancer le dé !"),
            ),
          ],
        );
  }
}