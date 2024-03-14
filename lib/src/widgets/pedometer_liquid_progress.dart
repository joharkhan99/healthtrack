import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class PedometerLiquidProgress extends StatelessWidget {
  const PedometerLiquidProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 220,
      child: LiquidCircularProgressIndicator(
        value: 0.5,
        valueColor: const AlwaysStoppedAnimation(Colors.green),
        backgroundColor: Colors.green.shade100,
        direction: Axis.vertical,
        center: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Goal : 6000",
                style: TextStyle(
                  color: Color.fromARGB(100, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "2986",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Steps",
                    style: TextStyle(
                      color: Color.fromARGB(100, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(70, 255, 255, 255),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      // Icons.pause,
                      size: 18,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'START',
                      // 'PAUSE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
