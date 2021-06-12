import 'package:flutter/material.dart';

class MinutesIndicator extends StatelessWidget {
  MinutesIndicator({Key? key, required this.minutes, required this.color});

  final int minutes;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(
          Icons.schedule,
          size: 20,
          color: color,
        ),
        SizedBox(width: 5),
        Text(
          '$minutes mins',
          style: theme.textTheme.subtitle1!.copyWith(color: color),
        )
      ],
    );
  }
}
