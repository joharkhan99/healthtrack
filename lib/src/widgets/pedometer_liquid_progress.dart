import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:pedometer/pedometer.dart';

class PedometerLiquidProgress extends StatefulWidget {
  const PedometerLiquidProgress({super.key});

  @override
  State<PedometerLiquidProgress> createState() => _PedometerLiquidProgressState();
}

class _PedometerLiquidProgressState extends State<PedometerLiquidProgress> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrainStatusStream;
  String _status = '?', _steps = '?';

  void onPedestrianStatusChange(PedestrianStatus event) {
    print(event);
    setState(() {
      _status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
  }

  void onStepCount(StepCount event) {
    print(event);
    print("Steps: ${event.steps.toString()}");
    setState(() {
      _steps = event.steps.toString();
    });
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = 'Step Count not available';
    });
  }

  void startPedometer() {
    _pedestrainStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrainStatusStream.listen(onPedestrianStatusChange).onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);
  }

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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _status + " " + _steps,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
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
                onPressed: startPedometer,
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
