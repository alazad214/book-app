import 'package:book_app/ui/about_screen.dart';
import 'package:book_app/ui/home.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [Home(), AboutScreen()];
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              activeIcon: Icon(Icons.info),
              label: "About"),
        ],
      ),
      body: pages[_currentindex],
    );
  }
}
