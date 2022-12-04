import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import 'package:heocondihoc/models/item.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/screens/history.dart';
import 'package:heocondihoc/screens/match_screen.dart';
import 'package:heocondihoc/screens/pay.dart';
import 'package:heocondihoc/screens/rank.dart';
import 'package:heocondihoc/screens/viewprofile.dart';

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
      child: Column(children: [
        ItemBar(),
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
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MatchScreen()));
                },
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
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/button02.png'))),
                  height: 60,
                  width: 180,
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
                                builder: (context) => RankScreen()));
                      },
                      child: Text('Bảng Xếp Hạng',
                          style: TextStyle(fontSize: 18, color: myColor)),
                    ),
                  ))),
              Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/button02.png'))),
                  height: 60,
                  width: 180,
                  child: Center(
                      child: SizedBox(
                    height: 65,
                    width: 195,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PayScreen()));
                      },
                      child: Text('Nạp Tiền',
                          style: TextStyle(fontSize: 18, color: myColor)),
                    ),
                  ))),
            ],
          ),
        )
      ]),
    ));
  }
}
