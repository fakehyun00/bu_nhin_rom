import 'dart:io';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';

import '../models/item.dart';

class SingleMatch extends StatefulWidget {
  const SingleMatch({super.key});

  @override
  State<SingleMatch> createState() => _SingleMatchState();
}

class _SingleMatchState extends State<SingleMatch> {
  @override
  Widget build(BuildContext context) {
    final answer = Color.fromARGB(
      200,
      229,
      215,
      232,
    );
    return Scaffold(
        backgroundColor: background_color,
        body: Column(children: [
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
          Container(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Text('Cau: 1/10',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: myColor,
                        fontSize: 25)),
                Container(
                    padding: EdgeInsets.fromLTRB(135, 0, 10, 0),
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
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
                margin: EdgeInsets.only(top: 20),
                child: Image(
                    width: 250,
                    image: NetworkImage(
                        'https://tse2.mm.bing.net/th?id=OIP.fHbZlC--YNbZNK7j1kzoKQHaE8&pid=Api&P=0')),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: 330,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: answer),
              child: Text(
                  'Công cụ bằng sắt xuất hiện vào khoảng thời gian nào ?')),
          Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: 330,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith(forgeanser),
                    backgroundColor:
                        MaterialStateProperty.resolveWith(ansercorret)),
                onPressed: () {},
                child: Text('A. 5500 năm trước'),
              )),
          Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: 330,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith(forgeanser),
                    backgroundColor:
                        MaterialStateProperty.resolveWith(anserwrong)),
                onPressed: () {},
                child: Text('B. 4000 năm trước'),
              )),
          Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: 330,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith(forgeanser),
                    backgroundColor:
                        MaterialStateProperty.resolveWith(anserwrong)),
                onPressed: () {},
                child: Text('C. 3000 năm trước'),
              )),
          Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: 330,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith(forgeanser),
                    backgroundColor:
                        MaterialStateProperty.resolveWith(anserwrong)),
                onPressed: () {},
                child: Text('D. 2000 năm trước'),
              )),
          Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(40, 20, 40, 15),
            child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      child: Text('Bỏ qua câu hỏi'),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(125, 10, 5, 10),
                            child: Text('10'),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                            child: Icon(Icons.money_sharp),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ]));
  }
}
