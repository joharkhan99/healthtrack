import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/pedometer_appbar.dart';
import 'package:healthtrack/src/widgets/pedometer_bottom_navigation.dart';
import 'package:healthtrack/src/widgets/pedometer_liquid_progress.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PedometerAppBar(),
      bottomNavigationBar: PedoMeterBottomNavigation(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [PedometerLiquidProgress()],
        ),
      ),
    );
  }
}
