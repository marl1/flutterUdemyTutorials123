import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center( // will take all the space and center its child horizontally and vertically
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Image.asset("assets/images/quiz-logo.png", color: const Color.fromARGB(150, 255, 255, 255), width: 300),
          ),
          SizedBox(height: 80,), //we could have used a padding widget wrapped around the child
          Text(
            style: TextStyle(color: Colors.white, fontSize: 22),
            "Learn Flutter the fun way",
          ),
          SizedBox(height: 80,),
          OutlinedButton.icon(
            onPressed: () => print("starting"),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white, side: BorderSide(color:Colors.white)),
            icon: Icon(Icons.arrow_circle_right_outlined),
            label: Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
