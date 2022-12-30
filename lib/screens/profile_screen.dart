import 'package:flutter/material.dart';

import '../components/achievements.dart';
import '../components/color.dart';
import '../components/header_info.dart';
import '../components/item.dart';
import '../components/padding_shop.dart';
import '../components/statistical.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        body: Container(
            decoration: background,
            child: Column(children: [
              const ItemBar(),
              const HeaderInfo(),
              divider,
              Container(
                child: TabBar(
                  indicator: const ShapeDecoration(
                      shape: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple,
                              width: 0,
                              style: BorderStyle.solid)),
                      gradient: LinearGradient(
                          colors: [Color(0xff0081ff), Color(0xff01ff80)])),
                  controller: tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  tabs: const [
                    Tab(text: 'Thành Tích'),
                    Tab(text: 'Thống Kê'),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                        width: double.maxFinite,
                        height: 500,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            Achievements(),
                            Statistical(),
                          ],
                        )),
                  ],
                ),
              ),
            ])));
  }
}
