import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/summaryItem.dart';

class QuestionSummary extends StatelessWidget{

  const QuestionSummary({super.key, required this.summary, required this.chosenAnswers});
  
  final List<String> chosenAnswers;
  final List<Summaryitem> summary;



  List<Widget> buildSummaryWidgets() {
    final List<Widget> summaryWidgets = [];
    for (final summaryItem in summary) {
      summaryWidgets.add(
        Row(
          children: [
            CircleAvatar(
              backgroundColor: determineCircleColor(
                summaryItem.userAnswer,
                summaryItem.correctAnswer,
              ),
              radius: 20,
              child: Text(
                (summaryItem.questionIndex + 1).toString(),
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded( // Permet de wrapper le texte mais je n'ai pas bien compris pourquoi.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    summaryItem.questionText,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Your answer: ${summaryItem.userAnswer}",
                    style: TextStyle(color: Colors.purpleAccent),
                  ),
                  Text(
                    "Correct answer: ${summaryItem.correctAnswer}",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return summaryWidgets;
  }

  Color determineCircleColor(String s1, s2) {
    if (s1 == s2) {
      return Colors.green;
    }
    return Colors.red;
  }
  
  @override
  Widget build(ctx) {
    return Column(
          children: [
            ...buildSummaryWidgets()
          ]
        );
  }
  
}