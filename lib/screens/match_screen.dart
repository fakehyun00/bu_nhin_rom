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
                    child: BackButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomBar()));
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
              Container(
                  padding: EdgeInsets.fromLTRB(35, 0, 35, 10),
                  child: Container(
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(260, 80),
                          backgroundColor: Colors.purple.shade300),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleMatch()));
                      },
                      child: Container(
                        child: Text(
                          'Đấu đơn',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  )),
              Gap(20),
              Container(
                  padding: EdgeInsets.fromLTRB(35, 0, 35, 10),
                  child: Container(
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(260, 80),
                          backgroundColor: Colors.pink.shade200),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleMatch()));
                      },
                      child: Container(
                        child: Text(
                          'Đối kháng',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
