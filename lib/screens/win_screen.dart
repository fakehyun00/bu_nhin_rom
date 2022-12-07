import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/screens/match_screen.dart';

import '../models/item.dart';

class WinScreen extends StatefulWidget {
  const WinScreen({super.key});

  @override
  State<WinScreen> createState() => _WinScreenState();
}

class _WinScreenState extends State<WinScreen> {
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
                const Gap(110),
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.5),
                          radius: 80,
                          child: const Icon(
                            Icons.person_outline,
                            color: myColor,
                            size: 70,
                          ),
                        )),
                  ],
                )
              ],
            ),
            const Gap(20),
            Container(
              child: const Text(
                "Fukbois Si's Tinh's",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Gap(30),
            Container(
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/3112/3112946.png',
                width: 100,
                height: 100,
              ),
            ),
            const Gap(20),
            Container(
                child: Text(
              'Winner',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[300]),
            )),
            const Gap(30),
            Container(
                padding: const EdgeInsets.fromLTRB(90, 0, 90, 0),
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(80, 50),
                    ),
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
