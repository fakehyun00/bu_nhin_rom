import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/item.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/logo.dart';

import 'package:heocondihoc/screens/match_screen.dart';
import 'package:heocondihoc/screens/pay.dart';
import 'package:heocondihoc/screens/rank.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: background,
      child: ListView(children: [
        Column(children: [
          const ItemBar(),
          const Gap(70),
          logo,
          const Gap(20),
          Container(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent[300]),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MatchScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Chơi', style: TextStyle(fontSize: 22))
                    ],
                  ),
                ),
              )),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
            color: Colors.white,
            child: const Text('Quảng Cáo'),
          ),
          const Gap(20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
                    child: SizedBox(
                      height: 90,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(110, 80),
                            padding: const EdgeInsets.only(top: 25),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RankScreen()));
                        },
                        child: Column(
                          children: const [
                            Icon(Icons.wine_bar),
                            Gap(2),
                            Text('Bảng xếp hạng')
                          ],
                        ),
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
                    child: SizedBox(
                      height: 90,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(110, 80),
                            padding: const EdgeInsets.only(top: 25),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PayScreen()));
                        },
                        child: Column(
                          children: const [
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
        ]),
      ]),
    ));
  }
}
