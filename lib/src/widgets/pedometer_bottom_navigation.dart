import 'package:flutter/material.dart';

class PedoMeterBottomNavigation extends StatelessWidget {
  const PedoMeterBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', tooltip: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.leaderboard_rounded), label: 'Report', tooltip: 'Report'),
        BottomNavigationBarItem(icon: Icon(Icons.health_and_safety_rounded), label: 'Health', tooltip: 'Health'),
        BottomNavigationBarItem(icon: Icon(Icons.settings_rounded), label: 'Settings', tooltip: 'Settings'),
      ],
    );
  }
}
