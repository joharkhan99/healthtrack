import 'package:flutter/material.dart';

class PedometerHistoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PedometerHistoryAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        'HISTORY',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
