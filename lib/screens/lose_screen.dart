import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/screens/match_screen.dart';

import '../models/item.dart';

class LoseScreen extends StatefulWidget {
  const LoseScreen({super.key});

  @override
  State<LoseScreen> createState() => _LoseScreenState();
}

class _LoseScreenState extends State<LoseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        child: Column(
          children: [
            Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Padding(padding: EdgeInsets.only(top: 101)),
                //     // Container(
                //     //     padding: EdgeInsets.only(right: 120),
                //     //     child: BackButton(onPressed: () {
                //     //       Navigator.pop(context);
                //     //       Navigator.push(
                //     //           context,
                //     //           MaterialPageRoute(
                //     //               builder: (context) => MatchScreen()));
                //     //     })),
                //     //ItemBar(),
                //   ],
                // ),
                Gap(110),
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.5),
                          radius: 80,
                          child: Icon(
                            Icons.person_outline,
                            color: myColor,
                            size: 70,
                          ),
                        )),
                  ],
                )
              ],
            ),
            Gap(20),
            Container(
              child: Text(
                "Fukbois Si's Tinh's",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Gap(30),
            Container(
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/8346/8346459.png',
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            ),
            Gap(20),
            Container(
                child: Text(
              'Loser',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[300]),
            )),
            Gap(30),
            Container(
                padding: EdgeInsets.fromLTRB(90, 0, 90, 0),
                child: Container(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(80, 50),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MatchScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Tiếp tục', style: TextStyle(fontSize: 22))
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
