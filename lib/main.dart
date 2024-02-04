import 'package:flutter/material.dart';

void main() {
  runApp(const VocabApp());
}

class VocabApp extends StatelessWidget {
  const VocabApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VOCAB',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("wait"),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
