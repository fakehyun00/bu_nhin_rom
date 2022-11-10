import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';

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
      backgroundColor: background_color,
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 101)),
                    Container(
                      padding: EdgeInsets.only(right: 120),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 35,
                      ),
                    ),
                    ItemBar()
                  ],
                ),
                Gap(10),
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
                'https://cdn-icons-png.flaticon.com/512/3112/3112946.png',
                width: 100,
                height: 100,
              ),
            ),
            Gap(20),
            Container(
                child: Text(
              'Winner',
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
                    onPressed: () {},
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
