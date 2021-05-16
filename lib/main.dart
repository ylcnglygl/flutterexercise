import 'package:flutter/material.dart';
import 'package:soccer/exercise.dart';
import 'package:soccer/stadium_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Exercises(),
      ),
    );
  }
}
