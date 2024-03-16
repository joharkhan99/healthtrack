import 'package:flutter/material.dart';

class PedometerHealthBmi extends StatelessWidget {
  const PedometerHealthBmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    'BMI (Kg/m2):',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 10),
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
                child: const Text(
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
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Padding(
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
              ),
            ),
            Positioned(
              top: 0,
              // left: MediaQuery.of(context).size.width * 0.02, // 1st
              left: MediaQuery.of(context).size.width * 0.25, // 2nd
              // left: MediaQuery.of(context).size.width * 0.45, // 3rd
              // left: MediaQuery.of(context).size.width * 0.66, // 4th
              // left: MediaQuery.of(context).size.width * 0.69, // 5th
              child: Container(
                // width: MediaQuery.of(context).size.width * 0.25,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  // color: Colors.lightBlueAccent,
                  color: Colors.green,
                  // color: Colors.yellow,
                  // color: Colors.orange,
                  // color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                child: const Text(
                  // 'Underweight',
                  'Normal',
                  // 'Overweight',
                  // 'Obese',
                  // 'Severely Obese',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
