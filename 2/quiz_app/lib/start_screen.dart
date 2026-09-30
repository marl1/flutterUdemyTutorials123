import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 111, 0, 255),
                const Color.fromARGB(255, 127, 28, 255),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Image.asset("assets/images/quiz-logo.png"),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(16),

                child: Text(
                  style: TextStyle(color: Colors.white, fontSize: 22),
                  "Learn Flutter the fun way",
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: ElevatedButton(
                  onPressed: () => { print("starting")},
                  child: Text("Start Quiz"),
                ),
              ),
            ],
          ),
        );
  }
}