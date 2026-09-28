import 'package:flutter/material.dart';
import 'package:tuto_udemy_1_app/conteneur_gradiant.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ConteneurGradiant(
          beginColor: Colors.red,
          endColor: Color.fromARGB(255, 4, 0, 22),
        ),
      ),
    ),
  );
}
