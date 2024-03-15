import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/charts/pedometer_bar_chart.dart';

class PedometerReport extends StatelessWidget {
  const PedometerReport({super.key});

  @override
  Widget build(BuildContext context) {
    List<BarChartData> chartData = [
      BarChartData('S1', 6000),
      BarChartData('M', 4000),
      BarChartData('T1', 10408),
      BarChartData('W', 2000),
      BarChartData('T', 5366),
      BarChartData('F', 9864),
      BarChartData('S', 8524),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: PedometerBarChart(chartData),
        ),
      ),
    );
  }
}
