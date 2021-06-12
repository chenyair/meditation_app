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
      theme: _buildMeditationTheme(),
      home: HomeScreen(),
    );
  }

  ThemeData _buildMeditationTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      scaffoldBackgroundColor: Color(0xFfF5F5F5),
      textTheme: _buildMeditationTextTheme(base.textTheme),
      primaryTextTheme: _buildMeditationTextTheme(base.primaryTextTheme),
    );
  }

  TextTheme _buildMeditationTextTheme(TextTheme base) {
    return base.copyWith(
        bodyText1: base.bodyText1!.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: base.subtitle1!
            .copyWith(fontWeight: FontWeight.w500, fontSize: 14));
  }
}
