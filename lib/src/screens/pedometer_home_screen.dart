import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/pedometer_appbar.dart';
import 'package:healthtrack/src/widgets/pedometer_bottom_navigation.dart';
import 'package:healthtrack/src/widgets/pedometer_liquid_progress.dart';
import 'package:healthtrack/src/widgets/pedometer_statsbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PedometerAppBar(),
      bottomNavigationBar: PedoMeterBottomNavigation(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PedometerLiquidProgress(),
              SizedBox(height: 20),
              PedometerStatsbar(),
            ],
          ),
        ),
      ),
    );
  }
}
