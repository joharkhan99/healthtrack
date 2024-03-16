import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/charts/pedometer_point_chart.dart';
import 'package:healthtrack/src/widgets/pedometer_health_bmi.dart';
import 'package:healthtrack/src/widgets/pedometer_health_stats.dart';

class PedometerHealth extends StatelessWidget {
  PedometerHealth({super.key});

  final List<TimeSeriesSales> data = [
    TimeSeriesSales(DateTime(2017, 9, 19), 15.54),
    TimeSeriesSales(DateTime(2017, 9, 26), 25.23),
    TimeSeriesSales(DateTime(2017, 10, 3), 100),
    TimeSeriesSales(DateTime(2017, 10, 10), 75.12),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PedometerHealthStats(),
            const SizedBox(height: 20),
            SizedBox(height: MediaQuery.of(context).size.height * 0.5, child: PedometerPointChart(data)),
            const SizedBox(height: 20),
            const PedometerHealthBmi()
          ],
        ),
      ),
    );
  }
}
