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
  late Widget activeScreen = StartScreen(switchScreen);

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
      print("changemennnnntz!");
    });
    
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
