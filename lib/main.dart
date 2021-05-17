import 'package:flutter/material.dart';
import 'package:soccer/text_button_example.dart';
import 'package:soccer/stadium_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TextButtonExample(),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}
