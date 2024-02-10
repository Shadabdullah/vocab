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
            leading: SvgPicture.asset(
              '$svgDirectory/logo.svg',
              width: 20.5,
              height: 20,
            ),
            title: const Text('10'),
            actions: [
              CupertinoButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                padding: EdgeInsets.zero,
                child: Icon(Icons.menu_outlined),
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Sets'),
              ],
            ),
          ),
          body: Center(child: Text("wait")),
          endDrawer: Drawer(
            backgroundColor: Colors.black,
            child: ListView(
                children: <Widget>[Text('Settings'), Text('Remembered')]),
          ),
        ));
  }
}
