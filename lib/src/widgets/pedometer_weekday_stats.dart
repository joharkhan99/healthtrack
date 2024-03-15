import 'package:flutter/material.dart';

class PedometerWeekdayStats extends StatelessWidget {
  const PedometerWeekdayStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  value: 0.5,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "S",
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
              SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  value: 0.2,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "M",
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
              SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  value: 0.8,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "T",
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
              SizedBox(
                width: 30,
                height: 30,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "W",
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
              SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  value: 0.5,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "T",
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
              SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  value: 0.5,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "F",
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
              SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  value: 0.5,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "S",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
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
