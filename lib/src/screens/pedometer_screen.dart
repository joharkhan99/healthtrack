import 'package:flutter/material.dart';
import 'package:healthtrack/src/screens/pedometer_home.dart';
import 'package:healthtrack/src/screens/pedometer_report.dart';
import 'package:healthtrack/src/widgets/pedometer_appbar.dart';
import 'package:healthtrack/src/widgets/pedometer_bottom_navigation.dart';
import 'package:healthtrack/src/widgets/pedometer_report_appbar.dart';

class PedometerScreen extends StatefulWidget {
  const PedometerScreen({super.key});

  @override
  State<PedometerScreen> createState() => _PedometerScreenState();
}

class _PedometerScreenState extends State<PedometerScreen> {
  final List<Widget> _pages = [
    const PedometerHome(),
    const PedometerReport(),
  ];
  final List<PreferredSizeWidget> _appBars = [
    const PedometerAppBar(),
    const PedometerReportAppBar(),
  ];

  int _currentIndex = 0;

  void onTabChange(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBars[_currentIndex],
      bottomNavigationBar: PedoMeterBottomNavigation(currentIndex: _currentIndex, onTabChange: onTabChange),
      body: _pages[_currentIndex],
    );
  }
}
