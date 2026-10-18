import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/summaryItem.dart';
import 'package:quiz_app/screens/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartFunction,
  });

  final List<String> chosenAnswers;
  final void Function() restartFunction;

  List<Summaryitem> buildSummaryData() {
    final List<Summaryitem> summary = [];
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

  @override
  Widget build(context) {
    print("ResultScreen build called");

    final summaryData = buildSummaryData();
    final nbrQuestion = chosenAnswers.length;
    final nbrCorrectAnswers =
        summaryData.where((e) => e.userAnswer == e.correctAnswer).length;

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
              "You answered $nbrCorrectAnswers out of $nbrQuestion questions correctly!",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 400, //un peu chiant que ça soit en dur.
              child: SingleChildScrollView(
                child: QuestionSummary(
                  summary: summaryData
                ),
              ),
            ),
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
