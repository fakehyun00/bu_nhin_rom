import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import 'package:heocondihoc/models/item.dart';

import 'package:gap/gap.dart';

import 'package:heocondihoc/screens/buyplays.dart';
import 'package:heocondihoc/screens/history.dart';
import 'package:heocondihoc/screens/pay.dart';
import 'package:heocondihoc/screens/rank.dart';
import 'package:heocondihoc/screens/rank_single_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background_color,
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ItemBar()],
            ),
          ),
          Gap(70),
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    radius: 70,
                    child: Icon(
                      Icons.person_outline,
                      color: myColor,
                      size: 70,
                    ),
                  )),
            ],
          ),
          Gap(20),
          Container(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 10),
              child: Container(
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent[300]),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Chơi', style: TextStyle(fontSize: 22))],
                  ),
                ),
              )),
          Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
            color: Colors.white,
            child: Text('Quảng Cáo'),
          ),
          Gap(20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 10),
                    child: Container(
                      height: 90,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(110, 80),
                            padding: EdgeInsets.only(top: 25),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RankScreen()));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.wine_bar),
                            Gap(2),
                            Text('Bảng xếp hạng')
                          ],
                        ),
                      ),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 10),
                    child: Container(
                      height: 90,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(110, 80),
                            padding: EdgeInsets.only(top: 25),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NapTienScreen()));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.badge),
                            Gap(2),
                            Text('Nạp tiền')
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          )
        ]));
  }
}
