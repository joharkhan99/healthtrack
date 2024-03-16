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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            "2986",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Steps",
                            style: TextStyle(
                              color: Color.fromARGB(100, 0, 0, 0),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "👣",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 5),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "1.86",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Mile",
                                    style: TextStyle(
                                      color: Color.fromARGB(100, 0, 0, 0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(width: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "🔥",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 5),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "162",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Kcal",
                                    style: TextStyle(
                                      color: Color.fromARGB(100, 0, 0, 0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "⏰",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 5),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "1h 21m",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Time",
                                    style: TextStyle(
                                      color: Color.fromARGB(100, 0, 0, 0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
