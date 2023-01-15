import 'package:flutter/material.dart';
import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void _navigateBottomNav(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _navigateBottomNav,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
          ]),
    );
  }
}
