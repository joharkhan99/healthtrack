import 'package:flutter/material.dart';

class PedometerHistory extends StatelessWidget {
  const PedometerHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(10),
          border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
        ),
        // height: 100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("12/10/2021", style: TextStyle(color: Color.fromARGB(100, 0, 0, 0), fontSize: 12)),
                Text(
                  "2986",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("77.1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 5),
                    Text("kcal", style: TextStyle(color: Color.fromARGB(100, 0, 0, 0), fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    Text("0h 10m", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("1.8", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 5),
                    Text("miles", style: TextStyle(color: Color.fromARGB(100, 0, 0, 0), fontSize: 12)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
