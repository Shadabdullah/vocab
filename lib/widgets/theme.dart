import 'package:flutter/material.dart';

ThemeData globalDarkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    ));

ThemeData globalLightTheme = ThemeData.light().copyWith(
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.green),
  ),
);
