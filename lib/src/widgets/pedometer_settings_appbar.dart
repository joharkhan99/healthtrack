import 'package:flutter/material.dart';

class PedometerSettingsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PedometerSettingsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        'HEALTH',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
