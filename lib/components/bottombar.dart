import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/screens/buyplays.dart';
import 'package:heocondihoc/screens/history.dart';
import 'package:heocondihoc/screens/home.dart';
import 'package:heocondihoc/screens/profile.dart';

import 'package:heocondihoc/screens/menu.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({super.key});

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 238, 244),
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.blue,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(icon: Icon(Icons.history)),
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.shop)),
            Tab(
              icon: Icon(Icons.menu),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: ProfileScreen(),
          ),
          Center(
            child: History(),
          ),
          Center(
            child: HomeScreen(),
          ),
          Center(
            child: BuyPlays(),
          ),
          Center(
            child: MenuScreen(),
          ),
        ],
      ),
    );
  }
}
