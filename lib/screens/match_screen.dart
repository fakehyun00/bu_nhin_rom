import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/logo.dart';
import 'package:heocondihoc/screens/home.dart';
import 'package:heocondihoc/screens/singlematch.dart';

import '../models/item.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: background,
      child: Column(
        children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(top: 101)),
                Container(
                  padding: EdgeInsets.only(right: 120),
                  child: BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomBar()));
                    },
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: ItemBar(),
                )
              ],
            ),
            Gap(10),
            Container(
              child: logo,
            ),
            Gap(20),
            // Container(
            //     padding: EdgeInsets.fromLTRB(35, 0, 35, 10),
            //   child:
            Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/button02.png'))),
                height: 100,
                width: 300,
                child: Center(
                    child: SizedBox(
                  width: 210,
                  height: 100,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleMatch()));
                    },
                    child: Text('Đấu Đơn',
                        style: TextStyle(fontSize: 25, color: myColor)),
                  ),
                ))),
            Gap(20),
            Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/button3.png'))),
                height: 100,
                width: 300,
                child: Center(
                    child: SizedBox(
                  width: 210,
                  height: 100,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleMatch()));
                    },
                    child: Text('Đối Kháng',
                        style: TextStyle(fontSize: 25, color: myColor)),
                  ),
                )))
          ]),
        ],
      ),
    ));
  }
}
