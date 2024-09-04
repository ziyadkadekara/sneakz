import 'package:flutter/material.dart';
import 'package:sneakz/components/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// we need get the index
  int _selectedIndex = 0;

  // we need function to set the index
  //when user taps botom bar icons

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // we need list of pages to switch

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
