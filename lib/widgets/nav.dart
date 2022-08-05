import 'package:built/screens/home.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: Text('Workout'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,

          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          // onTap: (int index) {
          //   print(index);
          // },
        ));
  }
}
