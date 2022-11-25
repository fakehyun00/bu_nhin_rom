import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/screens/buyplays.dart';
import 'package:heocondihoc/screens/history.dart';
import 'package:heocondihoc/screens/menu.dart';
import 'package:heocondihoc/screens/pay.dart';
import 'package:heocondihoc/screens/profile.dart';
import 'package:heocondihoc/screens/shop.dart';

import '../screens/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectIndex = 2;

  static final List<Widget> _widgetOptins = <Widget>[
    ProfileScreen(),
    History(),
    HomeScreen(),
    ShopScreen(),
    MenuScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptins[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile'),
          const BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_history_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_history_filled),
              label: 'History'),
          const BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_store_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_store_filled),
              label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.menu,
                color: Colors.grey.shade800,
              ),
              label: 'Menu')
        ],
      ),
    );
  }
}
