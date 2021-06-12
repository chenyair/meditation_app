import 'package:flutter/material.dart';
import 'package:meditation/models/meditation.dart';
import 'package:meditation/screens/home_screen/widgets/minutes_indicator.dart';

class DailyMeditation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Daily Meditations',
          style: theme.textTheme.bodyText1!.copyWith(fontSize: 20),
        ),
        SizedBox(height: 40),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: meditations.length,
                itemBuilder: (context, index) {
                  final meditation = meditations[index];
                  return _MeditationListItem(
                    meditation: meditation,
                    constraints: constraints,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _MeditationListItem extends StatelessWidget {
  const _MeditationListItem({
    Key? key,
    required this.meditation,
    required this.constraints,
  }) : super(key: key);

  final Meditation meditation;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth * 0.9,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  meditation.imageBackgorund,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      meditation.title,
                      style: theme.textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    MinutesIndicator(
                      minutes: meditation.minutes,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
