class Meditation {
  final String title;
  final int minutes;
  final String imageBackgorund;
  Meditation({
    required this.title,
    required this.minutes,
    required this.imageBackgorund,
  });
}

List<Meditation> meditations = [
  Meditation(
    title: 'Rest & Relax',
    minutes: 30,
    imageBackgorund: 'assets/relax.jpg',
  ),
  Meditation(
    title: 'Mindfulness',
    minutes: 15,
    imageBackgorund: 'assets/mindfulness.jpg',
  ),
];
