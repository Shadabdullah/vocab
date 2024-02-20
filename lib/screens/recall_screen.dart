import 'package:flutter/material.dart';

class RecallScreen extends StatelessWidget {
  const RecallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Text(
          "RecallPage",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      )),
    );
  }
}
