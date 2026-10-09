import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(questions[0].text),
              SizedBox(height: 15,),
              Column(children: [
                Padding(padding: EdgeInsetsGeometry.directional(top: 5), child: ElevatedButton(onPressed: null, child:Text(questions[0].answers[0]))),
                Padding(padding: EdgeInsetsGeometry.directional(top: 5), child:ElevatedButton(onPressed: null, child:Text(questions[0].answers[1]))),
                Padding(padding: EdgeInsetsGeometry.directional(top: 5), child:ElevatedButton(onPressed: null, child:Text(questions[0].answers[2]))),
                Padding(padding: EdgeInsetsGeometry.directional(top: 5), child:ElevatedButton(onPressed: null, child:Text(questions[0].answers[3]))),
                ]),
            ],
          ),
        ],
      ),
    );
  }
}
