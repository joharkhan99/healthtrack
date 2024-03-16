import 'package:flutter/material.dart';

class PedoMeterBottomNavigation extends StatelessWidget {
  int currentIndex;
  Function onTabChange;
  PedoMeterBottomNavigation({super.key, required this.currentIndex, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 0,
      currentIndex: currentIndex,
      onTap: (value) => onTabChange(value),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Today', tooltip: 'Today'),
        BottomNavigationBarItem(icon: Icon(Icons.leaderboard_rounded), label: 'Report', tooltip: 'Report'),
        BottomNavigationBarItem(icon: Icon(Icons.health_and_safety_rounded), label: 'Health', tooltip: 'Health'),
        BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_rounded), label: 'History', tooltip: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.settings_rounded), label: 'Settings', tooltip: 'Settings'),
      ],
    );
  }
}
