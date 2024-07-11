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
      appBar: AppBar(
        title: Text("Book App"),
        titleSpacing: 0,
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/book1.png",
              height: 100,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Poem book app",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
             ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            const ListTile(
              title: Text("About"),
              leading: Icon(Icons.info_outline),
            ),
            const ListTile(
              title: Text("More Apps"),
              leading: Icon(Icons.dashboard),
            ),
          ],
        ),
      ),
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
