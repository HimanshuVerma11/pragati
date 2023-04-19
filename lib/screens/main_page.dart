import 'package:flutter/material.dart';
import 'package:pragati/screens/buss_profile_screen.dart';
import 'package:pragati/screens/create_page.dart';
import 'package:pragati/screens/settings_screen.dart';
import 'package:pragati/screens/maps_screen.dart';
import 'package:pragati/screens/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // const HomePage({Key? key}) : super(key: key);
  int index = 0;
  final screens = [HomePage(), MapsPage(), CreatePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            elevation: 10,
            indicatorColor: Colors.deepPurple[200],
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 12, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.deepPurple[50],
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: [
            NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home'),
            NavigationDestination(
                selectedIcon: Icon(Icons.place),
                icon: Icon(Icons.place_outlined),
                label: 'Map'),
            NavigationDestination(
                selectedIcon: Icon(Icons.account_circle),
                icon: Icon(Icons.account_circle_outlined),
                label: 'My Account'),
          ],
        ),
      ),
    );
  }
}
