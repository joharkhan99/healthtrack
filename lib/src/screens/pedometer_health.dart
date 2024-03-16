import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/charts/pedometer_point_chart.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Weight',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => (),
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Current",
                  style: TextStyle(
                    color: Color.fromARGB(100, 0, 0, 0),
                    fontSize: 14,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "75.12 kg",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: PedometerPointChart(data),
          ),

          // bmi scale
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'BMI (Kg/m2):',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '22.5',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => (),
                  child: Text(
                    'EDIT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.173,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.16,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.16,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
