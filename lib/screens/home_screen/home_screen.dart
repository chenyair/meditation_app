import 'package:flutter/material.dart';
import 'package:meditation/screens/home_screen/widgets/daily_meditation.dart';
import 'package:meditation/screens/home_screen/widgets/new_music.dart';
import 'package:meditation/screens/home_screen/widgets/quick_help.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: _MeditationBottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.175,
                child: QuickHelp(),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: size.height * 0.325,
                child: DailyMeditation(),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: size.height * 0.275,
                child: NewMusic(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MeditationBottomNavigationBar extends StatelessWidget {
  const _MeditationBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          label: 'Today',
          icon: Icon(Icons.calendar_today_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Yoga',
          icon: Icon(Icons.videocam_outlined),
        ),
        BottomNavigationBarItem(
            label: 'Meditation',
            icon: Icon(
              Icons.dark_mode_outlined,
            )),
        BottomNavigationBarItem(
          label: 'Meal',
          icon: Icon(Icons.adjust_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person_outline),
        ),
      ],
    );
  }
}
