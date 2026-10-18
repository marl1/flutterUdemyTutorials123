import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/summaryItem.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartFunction,
  });

  final List<String> chosenAnswers;
  final void Function() restartFunction;

  List<Summaryitem> getSummaryData() {
    final List<Summaryitem> summary = [];
    var nbrReponseJuste = 0;
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        Summaryitem(
          questionIndex: i,
          questionText: questions[i].text,
          correctAnswer: questions[i].answers[0],
          userAnswer: chosenAnswers[i],
        ),
      );
    }
    return summary;
  }

  List<Widget> buildSummaryWidgets() {
    final List<Widget> summaryWidgets = [];
    for (final summaryItem in getSummaryData()) {
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
            Column(
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

  int getNbrCorrectAnswers() {
    int nbrCorrectAnswers = 0;
    for (final summaryItem in getSummaryData()) {
      if (summaryItem.correctAnswer == summaryItem.userAnswer) {
        nbrCorrectAnswers++;
      }
    }
    return nbrCorrectAnswers;
  }

  @override
  Widget build(context) {
    print("ResultScreen build called");
    return SizedBox(
      //Autre facon de centrer, SizedBox...
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(
          40,
        ), //..et container, cette combinaison est tres utilise pour centrer.
        child: Column(
          children: [
            Text(
              "You answered ${getNbrCorrectAnswers()} out of ${chosenAnswers.length} questions correctly!",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30),
            ...buildSummaryWidgets(),
            SizedBox(height: 30),
            TextButton(
              onPressed: restartFunction,
              child: Text(
                "Restart quiz.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
