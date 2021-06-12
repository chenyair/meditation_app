import 'package:flutter/cupertino.dart';

class Music {
  final String title;
  final String imageUrl;
  final int minutes;
  final Color backgroundColor;
  Music({
    required this.title,
    required this.imageUrl,
    required this.backgroundColor,
    required this.minutes,
  });
}

List<Music> music = [
  Music(
    title: 'Raining Sidewalk',
    imageUrl: 'assets/raining_sidewalk.png',
    backgroundColor: Color(0xFFEADEE2),
    minutes: 5,
  ),
  Music(
    title: 'Spring Morning',
    imageUrl: 'assets/spring_morning.png',
    backgroundColor: Color(0xFFEECFD2),
    minutes: 7,
  ),
  Music(
    title: 'First Summer',
    imageUrl: 'assets/first_summer.png',
    backgroundColor: Color(0xFFECECF0),
    minutes: 30,
  ),
];
