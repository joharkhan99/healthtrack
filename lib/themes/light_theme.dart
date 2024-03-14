import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.green,
  primaryColor: Colors.green,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.grey,
    selectedLabelStyle: TextStyle(color: Colors.green, fontSize: 12),
    unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 12),
    showUnselectedLabels: true,
  ),
);
