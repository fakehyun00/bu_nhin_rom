import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Statistical extends StatefulWidget {
  @override
  State<Statistical> createState() => _StatisticalState();
}

class _StatisticalState extends State<Statistical> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 192, 156, 228),
                      borderRadius: BorderRadius.circular(10)),
                  height: MediaQuery.of(context).size.width / 2.8,
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.layers,
                            size: 50,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            ' Số cấp độ đã \n hoàn thành: 1',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ))),
          Container(
              padding: EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 152, 220, 228),
                      borderRadius: BorderRadius.circular(10)),
                  height: MediaQuery.of(context).size.width / 2.8,
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 50,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            ' Ngày tham gia:\n 11/11/2022',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ))),
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            padding: EdgeInsets.all(20),
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 176, 212, 124),
                    borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.of(context).size.width / 2.8,
                width: MediaQuery.of(context).size.width / 2.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.question_answer,
                          size: 50,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ' Số câu hỏi\n trả lời đúng: 9',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ))),
        Container(
            padding: EdgeInsets.all(20),
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 180, 116),
                    borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.of(context).size.width / 2.8,
                width: MediaQuery.of(context).size.width / 2.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.lightbulb,
                          size: 50,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ' Tỉ lệ trả lời\n đúng: 80%',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ))),
      ]),
    ]));
  }
}
