import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/screens/history.dart';
import 'package:heocondihoc/screens/menu.dart';
import 'package:heocondihoc/screens/pay.dart';
import 'package:heocondihoc/screens/profile.dart';

import '../screens/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectIndex = 0;

  static final List<Widget> _widgetOptins = <Widget>[
    ProfileScreen(),
    History(),
    HomeScreen(),
    NapTienScreen(),
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
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_history_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_history_filled),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_store_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_store_filled),
              label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_timeline_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_timeline_filled),
              label: 'Menu')
        ],
      ),
    );
  }
}
