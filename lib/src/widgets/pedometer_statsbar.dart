import 'package:flutter/material.dart';

class PedometerStatsbar extends StatelessWidget {
  const PedometerStatsbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      padding: const EdgeInsets.all(10),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "🚶🏻",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "1.86",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Mile",
                style: TextStyle(
                  color: Color.fromARGB(100, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "🔥",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "162",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Kcal",
                style: TextStyle(
                  color: Color.fromARGB(100, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "⏰",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "1h 21m",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Time",
                style: TextStyle(
                  color: Color.fromARGB(100, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "⚡",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "4.29",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Mile/h",
                style: TextStyle(
                  color: Color.fromARGB(100, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
