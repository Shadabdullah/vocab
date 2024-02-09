import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Correct import statement for flutter_svg
import 'package:vocab/constants.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // Specify the number of tabs
        child: Scaffold(
            appBar: AppBar(
              leading: SvgPicture.asset('$svgDirectory/logo.svg'),
              title: const Text('10') ,
              actions: [
                CupertinoButton(
                  onPressed: () {
                    // Handle hamburger icon tapped
                  },
                  padding: EdgeInsets.zero,
                  child: Icon(CupertinoIcons.hammer),
                ),
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'Home'),
                  Tab(text: 'Sets'),
                ],
              ),
            ),
            body: Center(child: Text("wait"))));
  }
}
