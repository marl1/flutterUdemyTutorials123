import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    var nbrReponseJuste = 0;
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index':i,
        'question_text':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer': chosenAnswers[i]
        });
    }
    print("Vous avez répondu juste à $nbrReponseJuste questions !");
    return summary;
  }


  @override
  Widget build(context) {
    return SizedBox( //Autre facon de centrer, SizedBox...
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40), //..et container, cette combinaison est tres utilise pour centrer.
        child: Column(
          children: [
            Text("You answered 3 out of 6 questions correctly!"),
            SizedBox(height: 30,),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink[100],
                  radius: 20,
                  child: const Text(
                    'A',
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text("Blabla")
              ],
            ),
            SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text("Restart quiz."))
          ],
        ),
      ),
    );
  }
}
