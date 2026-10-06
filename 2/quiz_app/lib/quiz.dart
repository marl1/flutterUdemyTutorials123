import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  var quizState = _QuizState();
  @override
  State<Quiz> createState() {
    return quizState;
  }

  void switchScreen() {
    quizState.switchScreen();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const QuestionsScreen();

  @override
  void initState() {
    super.initState();
    activeScreen = const StartScreen();
  }

  void switchScreen() {
    print("changemennnnnt!");
    setState(() {
    });
    
      activeScreen = const QuestionsScreen();
      print("changemennnnnt!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
              colors: [
                const Color.fromARGB(255, 111, 0, 255),
                const Color.fromARGB(255, 161, 89, 255),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
