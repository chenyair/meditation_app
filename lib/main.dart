import 'package:flutter/material.dart';
import 'package:meditation/screens/home_screen/home_screen.dart';

void main() {
  runApp(MeditationApp());
}

class MeditationApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(),
    );
  }
}
