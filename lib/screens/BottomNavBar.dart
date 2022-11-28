import 'package:flutter/material.dart';
import 'package:xplorify_app/screens/HomeScreen.dart';
import 'package:xplorify_app/screens/cart.dart';
import 'package:xplorify_app/screens/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex =0;
   var pages =[HomeScreen(), Cart(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pages[_selectedIndex],
      bottomNavigationBar:  BottomNavigationBar(items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.shopping_cart),label: "Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
    ],
    elevation: 3,
    type: BottomNavigationBarType.shifting,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.blue,
    currentIndex:  _selectedIndex,
    onTap: (int index){
    setState(() {
    _selectedIndex = index;
    });
    },
    iconSize: 30,
    ),
    );
  }
}
