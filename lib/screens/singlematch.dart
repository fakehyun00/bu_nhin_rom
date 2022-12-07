import 'dart:io';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/screens/lose_screen.dart';
import 'package:heocondihoc/screens/win_screen.dart';

import '../models/item.dart';

class SingleMatch extends StatefulWidget {
  const SingleMatch({super.key});

  @override
  State<SingleMatch> createState() => _SingleMatchState();
}

class _SingleMatchState extends State<SingleMatch> {
  @override
  Widget build(BuildContext context) {
    final answer = const Color.fromARGB(
      200,
      229,
      215,
      232,
    );

    return Scaffold(
        body: Container(
      decoration: background,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(padding: EdgeInsets.only(top: 101)),
            Container(
              padding: const EdgeInsets.only(right: 120),
              child: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomBar()));
                },
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: const ItemBar(),
            )
          ],
        ),
        Container(
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 15)),
              const Text('Câu: 10/10',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: myColor,
                      fontSize: 25)),
              Container(
                  padding: const EdgeInsets.fromLTRB(135, 0, 10, 0),
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.access_time_rounded,
                        color: myColor,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text('30s',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: myColor,
                              fontSize: 25))
                    ],
                  )),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Image(
                  width: 250,
                  image: NetworkImage(
                      'https://thidaihoc.vn/wp-content/uploads/2021/10/y-nghia-lon-nhat-cua-viec-phat-minh-ra-cong-cu-kim-khi-la-gi.jpg?x11178')),
            )
          ],
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            width: 330,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: answer),
            child: const Text(
                'Công cụ bằng sắt xuất hiện vào khoảng thời gian nào ?')),
        Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            width: 330,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.resolveWith(forgeanser),
                  backgroundColor:
                      MaterialStateProperty.resolveWith(ansercorret)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WinScreen()));
              },
              child: const Text('A. 5500 năm trước'),
            )),
        Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            width: 330,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.resolveWith(forgeanser),
                  backgroundColor:
                      MaterialStateProperty.resolveWith(anserwrong)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoseScreen()));
              },
              child: const Text('B. 4000 năm trước'),
            )),
        Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            width: 330,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.resolveWith(forgeanser),
                  backgroundColor:
                      MaterialStateProperty.resolveWith(anserwrong)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoseScreen()));
              },
              child: const Text('C. 3000 năm trước'),
            )),
        Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            width: 330,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.resolveWith(forgeanser),
                  backgroundColor:
                      MaterialStateProperty.resolveWith(anserwrong)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoseScreen()));
              },
              child: const Text('D. 2000 năm trước'),
            )),
        Container(
          height: 40,
          margin: const EdgeInsets.fromLTRB(40, 20, 40, 15),
          child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text('Bỏ qua câu hỏi'),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(125, 10, 5, 10),
                          child: const Text('10'),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                          child: const Icon(Icons.money_sharp),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        )
      ]),
    ));
  }
}
