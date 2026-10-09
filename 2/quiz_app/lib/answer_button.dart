import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  
  const AnswerButton(this.text, {super.key});
  
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.directional(top: 5), child:ElevatedButton(onPressed: (){}, child: Text(text)));
  }
}
