import 'package:flutter/material.dart';
import 'package:healthtrack/src/models/bar_chart_data.dart';
import 'package:healthtrack/src/widgets/charts/pedometer_bar_chart.dart';
import 'package:healthtrack/src/widgets/pedometer_report_stats.dart';

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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: TabBar(
              labelPadding: EdgeInsets.all(0),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.green,
              ),
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              indicatorPadding: EdgeInsets.all(0),
              indicatorWeight: 4,
              unselectedLabelColor: Colors.grey,
              overlayColor: MaterialStateProperty.all(Colors.green.shade100),
              tabs: [
                Tab(child: Text('DAY')),
                Tab(child: Text('WEEK')),
                Tab(child: Text('MONTH')),
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
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    const PedometerReportStats(),
                    PedometerBarChart(chartData),
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
