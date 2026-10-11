
import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionId = 0;

  List<AnswerButton> generateAnswerButtons(List<String> answers) {
    return (answers.toList()..shuffle())
        .map(((e) => AnswerButton(e, answerQuestion)))
        .toList();
  }

  void answerQuestion() {
    setState(() {
      currentQuestionId++;
      print("the currentQuestionId = $currentQuestionId");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // ask the children to take all space horizontally
          children: [
            Text(style: GoogleFonts.lobster(fontSize: 40, color: Colors.white), textAlign: TextAlign.center, questions[currentQuestionId].text),
            SizedBox(height: 15),
            ...generateAnswerButtons(questions[currentQuestionId].answers),
          ],
        ),
      ),
    );
  }
}
