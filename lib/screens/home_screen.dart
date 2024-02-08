import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vocab/constants.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row( children: [
            SvgPicture.asset('$svgDirectory/logo.svg'), // Use the correct file name
            const SizedBox(width: 8), // Add spacing between the logo and title
             Text('UrduVocab' ,style: Theme.of(context).textTheme.bodyLarge,),
          ],),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Example!',
              style: Theme.of(context).textTheme.bodyLarge
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
