import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/history.dart';
import 'package:heocondihoc/components/play.dart';
import 'package:heocondihoc/screens/profile.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> with TickerProviderStateMixin {
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
            child: PlayScreen(),
          ),
          Center(
            child: Text('abc3'),
          ),
          Center(
            child: Text('abc4'),
          ),
        ],
      ),
    );
  }
}
