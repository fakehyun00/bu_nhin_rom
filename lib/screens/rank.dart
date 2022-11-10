import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class RankScreen extends StatefulWidget {
  const RankScreen({super.key});

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      body: Column(
        children: [
          Gap(30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                //padding: EdgeInsets.all(0),
                child: BackButton(
                  color: myColor,
                  onPressed: () {},
                ),
              ),
              Expanded(
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
          NavigationBar(
              height: 30,
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  icon: Text(
                    'Đấu Đơn',
                    style: TextStyle(fontSize: 20),
                  ),
                  //selectedIcon: Text('Thành tích'),
                  label: '',
                ),
                NavigationDestination(
                  icon: Text(
                    'Đối Kháng',
                    style: TextStyle(fontSize: 20),
                  ),
                  label: '',
                ),
              ]),
          Gap(20),
          <Widget>[
            Container(
              child: Column(
                children: [
                  Card(
                      color: background_color,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Text(
                                '1',
                                style: TextStyle(color: myColor),
                              ),
                              title: Text('ĐNYN',
                                  style: TextStyle(
                                      color: myColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            divider,
                            const ListTile(
                              leading: Text(
                                '2',
                                style: TextStyle(color: myColor),
                              ),
                              title: Text('Fukboi\'s si\'s tình\'s',
                                  style: TextStyle(
                                      color: myColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            divider,
                            const ListTile(
                              leading: Text(
                                '3',
                                style: TextStyle(color: myColor),
                              ),
                              title: Text('Lộc fuho',
                                  style: TextStyle(
                                      color: myColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            divider,
                            const ListTile(
                              leading: Text(
                                '4',
                                style: TextStyle(color: myColor),
                              ),
                              title: Text('Hưng Apple',
                                  style: TextStyle(
                                      color: myColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            divider,
                            const ListTile(
                              leading: Text(
                                '5',
                                style: TextStyle(color: myColor),
                              ),
                              title: Text('Mơi Văn Dũng',
                                  style: TextStyle(
                                      color: myColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            divider,
                            const ListTile(
                              leading: Text(
                                '6',
                                style: TextStyle(color: myColor),
                              ),
                              title: Text('Everything is Widget',
                                  style: TextStyle(
                                      color: myColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            divider,
                            const ListTile(
                              leading: Text(
                                '7',
                                style: TextStyle(color: myColor),
                              ),
                              title: Text('Độc cô cầu qua môn',
                                  style: TextStyle(
                                      color: myColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            divider,
                          ]))
                ],
              ),
            ),
            Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('Page 2'),
            ),
          ][currentPageIndex],
        ],
      ),
    );
  }
}
