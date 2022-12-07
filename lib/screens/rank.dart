// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/Solo.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/components/versus.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import 'package:heocondihoc/models/padding_shop.dart';
import 'package:heocondihoc/screens/home.dart';

class RankScreen extends StatefulWidget {
  const RankScreen({super.key});

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _rankTabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Container(
        decoration: background,
        child: Column(
          children: [
            const Gap(30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  //padding: EdgeInsets.all(0),
                  child: BackButton(
                    color: myColor,
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomBar()));
                    },
                  ),
                ),
                const Expanded(
                  flex: 9,
                  //padding: EdgeInsets.all(0),
                  child: Icon(
                    Icons.sports_score,
                    color: myColor,
                    size: 100,
                  ),
                )
              ],
            ),
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
                controller: _rankTabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(text: 'Đơn'),
                  Tab(text: 'Đối Kháng'),
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
                        controller: _rankTabController,
                        children: [
                          Solo(),
                          Versus(),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
