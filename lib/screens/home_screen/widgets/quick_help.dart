import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/models/meditation_option.dart';

class QuickHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 22.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quick Help',
                style: theme.textTheme.bodyText1!.copyWith(fontSize: 20),
              ),
              Icon(Icons.search, size: 30),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _buildMeditationOptions(constraints),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildMeditationOptions(BoxConstraints constraints) {
    return meditationOptions
        .map<Widget>((option) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(12.0),
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxWidth / meditationOptions.length * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    option.iconUrl,
                    color: option.iconColor,
                  ),
                ),
                SizedBox(height: 5),
                Text(option.title),
              ],
            ))
        .toList();
  }
}
