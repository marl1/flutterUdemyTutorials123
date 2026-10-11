import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = ScreenId.startScreen;

  void launchQuiz() {
    setState(() {
      activeScreen = ScreenId.quizScreen;
      print("changemennnnntzzwww!");
    });
  }

  void showResults() {
    setState(() {
      activeScreen = ScreenId.startScreen;
      print("brqvo!");
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget calculatedScreenWidget;

    if (activeScreen == ScreenId.quizScreen) {
      calculatedScreenWidget = QuestionsScreen(showResults);
    } else {
      calculatedScreenWidget = StartScreen(launchQuiz);
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
