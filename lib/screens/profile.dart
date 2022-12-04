import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/achievements.dart';
import 'package:heocondihoc/components/statistical.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import 'package:heocondihoc/models/item.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        body: Container(
            decoration: background,
            child: Column(children: [
              ItemBar(),
              HeaderInfo(),
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
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(text: 'Thành Tích'),
                    Tab(text: 'Thống Kê'),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                        width: double.maxFinite,
                        height: 500,
                        child: TabBarView(
                          controller: _tabController,
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
