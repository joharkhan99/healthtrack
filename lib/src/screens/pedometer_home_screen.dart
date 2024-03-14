import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/pedometer_appbar.dart';
import 'package:healthtrack/src/widgets/pedometer_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PedometerAppBar(),
      bottomNavigationBar: PedoMeterBottomNavigation(),
      body: Center(
        child: Text('Welcome to Health Track'),
      ),
    );
  }
}
