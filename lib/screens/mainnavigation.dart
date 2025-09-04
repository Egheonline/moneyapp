import 'package:flutter/material.dart';
import 'welcome.dart';
import 'savings.dart';
import 'profile.dart';
import 'account.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: MainNavigation(), // MainNavigation should be the home widget
  );
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Welcome(),
    Savings(),
    Welcome(),
    Profile(),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(0, 128, 128, 1),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: "Savings",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Invest"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      
    );
  }
}
