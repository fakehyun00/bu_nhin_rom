import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';

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
                  color: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Icon(
                        Icons.wine_bar_rounded,
                        size: 30,
                      ),
                      Text('Bảng xếp hạng')
                    ],
                  ),
                ),
                Container(
                  color: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin: EdgeInsets.only(right: 40),
                  child: Column(
                    children: [
                      Icon(
                        Icons.badge_outlined,
                        size: 30,
                      ),
                      Text('    Nạp Tiền    ')
                    ],
                  ),
                )
              ],
            ),
          )
        ]));

  }
}
