import 'package:flutter/material.dart';

ThemeData globalDarkTheme = ThemeData.dark().copyWith(
    textTheme: const TextTheme(
  bodyLarge: TextStyle(color: Colors.yellow),
));

ThemeData globalLightTheme = ThemeData.light().copyWith(
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.green),
  ),
);
