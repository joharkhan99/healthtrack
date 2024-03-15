import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/pedometer_appbar.dart';
import 'package:healthtrack/src/widgets/pedometer_bottom_navigation.dart';
import 'package:healthtrack/src/widgets/pedometer_liquid_progress.dart';
import 'package:healthtrack/src/widgets/pedometer_statsbar.dart';
import 'package:healthtrack/src/widgets/pedometer_weekday_stats.dart';

class PedometerHomeScreen extends StatelessWidget {
  const PedometerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PedometerAppBar(),
      bottomNavigationBar: PedoMeterBottomNavigation(),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PedometerLiquidProgress(),
                SizedBox(height: 20),
                PedometerStatsbar(),
                SizedBox(height: 8),
                PedometerWeekdayStats(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
