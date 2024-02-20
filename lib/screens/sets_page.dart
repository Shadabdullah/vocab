import 'package:flutter/material.dart';
import 'package:vocab/widgets/setcard.dart';

class SetsPage extends StatelessWidget {
  SetsPage({super.key});
  final List<String> items = List.generate(30, (index) => 'SET $index');

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 1),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return AspectRatio(
          aspectRatio: 1, // Adjust aspect ratio as needed
          child: SetCard(
            title: items[index],
            progress: 75,
            unlocked: false,
          ),
        );
      },
    );
  }
}
