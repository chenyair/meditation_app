import 'package:flutter/material.dart';
import 'package:meditation/models/music.dart';
import 'package:meditation/screens/home_screen/widgets/minutes_indicator.dart';

class NewMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Music',
                style: theme.textTheme.bodyText1!.copyWith(fontSize: 20),
              ),
              Text(
                'View all',
                style: theme.textTheme.subtitle1!.copyWith(color: Colors.grey),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: music.length,
                itemBuilder: (context, index) {
                  Music currentMusic = music[index];
                  return _MusicListItem(
                    currentMusic: currentMusic,
                    constraints: constraints,
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}

class _MusicListItem extends StatelessWidget {
  const _MusicListItem({
    Key? key,
    required this.currentMusic,
    required this.constraints,
  }) : super(key: key);

  final Music currentMusic;
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(blurRadius: 6, color: Colors.grey[400]!),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                width: constraints.maxWidth / 2.8,
                color: currentMusic.backgroundColor,
              ),
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                bottom: 50,
                child: Image.asset(currentMusic.imageUrl),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: constraints.maxHeight / 2.8,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentMusic.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              theme.textTheme.bodyText1!.copyWith(fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        MinutesIndicator(
                          minutes: currentMusic.minutes,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
