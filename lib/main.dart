import 'package:flutter/material.dart';

void main() {
  runApp(VocabApp());
}

class VocabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, // Use system theme mode (light or dark)
      darkTheme: ThemeData.dark().copyWith(
       textTheme: const TextTheme(
         bodyLarge: TextStyle(color: Colors.yellow),
       )
      ), // Use dark theme
      theme: ThemeData.light().copyWith(
        textTheme: const TextTheme(
          // Define text styles for both light and dark themes
          bodyLarge: TextStyle(color: Colors.green),
          
  
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: Theme.of(context).textTheme.bodySmall, 
            ),
           const  SizedBox(height: 20),
           
          ],
        ),
      ),
    );
  }
}
