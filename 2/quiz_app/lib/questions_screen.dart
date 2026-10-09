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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(style: TextStyle(color: Colors.white), questions[0].text),
              SizedBox(height: 15,),
              Column(children: [
                AnswerButton(questions[0].answers[0]),
                AnswerButton(questions[0].answers[1]),
                AnswerButton(questions[0].answers[2]),
                AnswerButton(questions[0].answers[3]),
                ]),
            ],
          ),
        ],
      ),
    );
  }
}
