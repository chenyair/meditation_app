import 'package:flutter/material.dart';

class MeditationOption {
  final String title;
  final String iconUrl;
  final Color iconColor;
  MeditationOption({
    required this.title,
    required this.iconUrl,
    required this.iconColor,
  });
}

List<MeditationOption> meditationOptions = [
  MeditationOption(
    title: 'Breathe',
    iconUrl: 'assets/breathe.svg',
    iconColor: Color(0xFF9FBBCF),
  ),
  MeditationOption(
    title: 'Sleep',
    iconUrl: 'assets/sleep.svg',
    iconColor: Color(0xFFDADCA2),
  ),
  MeditationOption(
    title: 'Anxiety',
    iconUrl: 'assets/anxiety.svg',
    iconColor: Color(0xFFEED8AB),
  ),
  MeditationOption(
    title: 'Stress',
    iconUrl: 'assets/stress.svg',
    iconColor: Color(0xFFACA9B7),
  ),
];
