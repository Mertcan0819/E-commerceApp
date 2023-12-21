import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'cartscreen.dart';
import 'favoritescreen.dart';
import 'profilescreen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    const HomeScreen(), 
    const CartScreen(), 
    const FavoriteScreen(), 
    const ProfileScreen(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  IndexedStack(
        index: pageIndex,
        children: pages, 
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home, 
          CupertinoIcons.cart, 
          CupertinoIcons.heart, 
          CupertinoIcons.profile_circled
        ], 
        activeIndex: pageIndex,
        gapLocation: GapLocation.center,
        activeColor: const Color(0xFFD83022),
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10, 
        backgroundColor: const Color.fromARGB(255, 217, 216, 216),
        iconSize: 25, 
        rightCornerRadius: 10,
        elevation: 0, 
         onTap: (index) {
           setState(() {
             pageIndex = index;
           });
         },
         ),
          extendBody: true,
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFDB3022),
          child: const Icon(Icons.qr_code, size: 20),
          onPressed: (){}
          ),
    );
  }
}