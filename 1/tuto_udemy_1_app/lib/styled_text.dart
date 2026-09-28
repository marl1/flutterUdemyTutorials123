import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText(this.textToDisplay, {super.key});

  final String textToDisplay;

  @override
  Widget build(BuildContext context) {
    return Text(
              textToDisplay,
              style: const TextStyle(color: Colors.white, fontSize: 50),
            );
  }
}