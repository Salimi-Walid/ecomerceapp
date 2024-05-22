import 'package:ecomerceapp/screen/cart.dart';
import 'package:ecomerceapp/screen/home.dart';
import 'package:ecomerceapp/screen/profille.dart';
import 'package:ecomerceapp/screen/serch.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Serch(),
    Cart(),
    Prophile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          gap: 8,
          backgroundColor: Colors.black,
          activeColor: Colors.white,
          color: Colors.white,
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.person,
              text: 'Person',
            ),
          ]),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
