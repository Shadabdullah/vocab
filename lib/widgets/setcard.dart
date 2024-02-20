import 'package:flutter/material.dart';

class SetCard extends StatelessWidget {
  final String title;
  final double progress;
  final bool unlocked;
  const SetCard(
      {super.key,
      required this.title,
      required this.progress,
      required this.unlocked});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          elevation: 2,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black),
                    ),
                    LinearProgressIndicator(
                      value: progress, // Set the progress value if needed
                      backgroundColor:
                          Colors.blue, // Customize background color if needed
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.green),
                      semanticsLabel:
                          '100', // Customize progress color if needed
                    )
                  ],
                ),
              ),
              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
