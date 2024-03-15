import 'package:flutter/material.dart';
import 'package:healthtrack/src/models/bar_chart_data.dart';
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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: TabBar(
              labelPadding: EdgeInsets.all(0),
              tabs: [
                Tab(child: Text('Week')),
                Tab(child: Text('Month')),
                Tab(child: Text('Year')),
              ],
            ),
          ),
          title: null,
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: PedometerBarChart(chartData),
                    ),
                    SizedBox(
                      height: 300,
                      child: PedometerBarChart(chartData),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
