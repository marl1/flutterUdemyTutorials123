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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(style: TextStyle(color: Colors.white), currentQuestion.text),
              SizedBox(height: 15,),
              Column(children: [
                AnswerButton(currentQuestion.answers[0], (){}),
                AnswerButton(currentQuestion.answers[1], (){}),
                AnswerButton(currentQuestion.answers[2], (){}),
                AnswerButton(currentQuestion.answers[3], (){}),
                ]),
            ],
          ),
        ],
      ),
    );
  }
}
