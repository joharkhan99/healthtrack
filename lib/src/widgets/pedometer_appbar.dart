import 'package:flutter/material.dart';

class PedometerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PedometerAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        'TODAY',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: ElevatedButton(
            style: ElevatedButtonTheme.of(context).style,
            onPressed: () => (),
            child: const Row(
              children: [
                Icon(
                  Icons.add_circle,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  'Add Widget',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
