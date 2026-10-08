import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = ScreenId.startScreen;

  void switchScreen() {
    setState(() {
      activeScreen = ScreenId.quizScreen;
      print("changemennnnntzzwww!");
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget calculatedScreenWidget;

    if (activeScreen == ScreenId.quizScreen) {
      calculatedScreenWidget = const QuestionsScreen();
    } else {
      calculatedScreenWidget = StartScreen(switchScreen);
    }

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
          child: calculatedScreenWidget,
        ),
      ),
    );
  }
}

enum ScreenId { startScreen, quizScreen }
