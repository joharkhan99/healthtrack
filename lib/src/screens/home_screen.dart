import 'package:flutter/material.dart';
import 'package:healthtrack/src/widgets/pedometer_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Track'),
      ),
      bottomNavigationBar: const PedoMeterBottomNavigation(),
      body: const Center(
        child: Text('Welcome to Health Track'),
      ),
    );
  }
}
