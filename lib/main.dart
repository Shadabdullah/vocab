import 'package:flutter/material.dart';
import 'package:vocab/widgets/theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const VocabApp());
}

class VocabApp extends StatelessWidget {
  const VocabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, 
      darkTheme: globalDarkTheme ,
      theme: globalLightTheme ,
      home: MyHomePage(),
    );
  }
}

