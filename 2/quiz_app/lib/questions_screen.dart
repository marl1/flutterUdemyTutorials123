import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  List<AnswerButton> generateAnswerButtons() {
    return (currentQuestion.answers.toList()..shuffle(Random(0))).map(((e) => AnswerButton(e, () {}))).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(style: TextStyle(color: Colors.white), currentQuestion.text),
              SizedBox(height: 15),
              ...generateAnswerButtons(),
            ],
          ),
        ],
      ),
    );
  }
}
