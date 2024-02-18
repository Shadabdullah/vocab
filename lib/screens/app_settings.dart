import 'package:flutter/material.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
              child: Text(
        "Setting Page",
        style: Theme.of(context).textTheme.bodyLarge,
      ))),
    );
  }
}
