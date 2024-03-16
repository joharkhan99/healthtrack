import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/charts/pedometer_point_chart.dart';

class PedometerHealth extends StatelessWidget {
  PedometerHealth({super.key});

  final List<LinearSales> data = [
    LinearSales(0, 5),
    LinearSales(1, 25),
    LinearSales(2, 100),
    LinearSales(3, 75),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: PedometerPointChart(
              data,
            ),
          ),
        ],
      ),
    ));
  }
}
