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
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 12, color: Colors.white),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    ),
  ),
);
