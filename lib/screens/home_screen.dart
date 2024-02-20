import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vocab/constants.dart';
import 'package:vocab/screens/app_settings.dart';
import 'package:vocab/screens/recall_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              leading: const Center(child: Text("L O G O")),
              centerTitle: true,
              title: const Text('DIAMOND'),
              bottom: const TabBar(tabs: [
                Tab(text: 'Home'),
                Tab(
                  text: 'Sets',
                )
              ])),
          endDrawer: Drawer(
            child: Container(
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  const DrawerHeader(
                      child: Center(
                          child: Text(
                    'U R D U V O C A B',
                    style: TextStyle(fontSize: 20),
                  ))),
                  ListTile(
                    title: const Text('Setting'),
                    leading: const Icon(Icons.settings),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AppSettings()));
                    },
                  ),
                  ListTile(
                    title: const Text('Recall'),
                    leading: const Icon(Icons.battery_charging_full_outlined),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RecallScreen()));
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 90, 91, 91),
          leading: Padding(
            padding: const EdgeInsets.all(0),
            child: SvgPicture.asset(
              '$svgDirectory/logo.svg',
            ),
          ),
          title: const Text('10'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                icon: const Icon(Icons.menu_outlined),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Sets'),
            ],
          ),
        ),
        body: const Center(child: Text("wait")),
      ),
    );
  }
}
