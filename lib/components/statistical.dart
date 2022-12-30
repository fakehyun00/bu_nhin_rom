import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 192, 156, 228),
                      borderRadius: BorderRadius.circular(10)),
                  height: MediaQuery.of(context).size.width / 2.8,
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.layers,
                            size: 50,
                          )
                        ],
                      ),
                      Row(
                        children: const [
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
              padding: const EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 152, 220, 228),
                      borderRadius: BorderRadius.circular(10)),
                  height: MediaQuery.of(context).size.width / 2.8,
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            size: 50,
                          )
                        ],
                      ),
                      Row(
                        children: const [
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
            padding: const EdgeInsets.all(20),
            child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 176, 212, 124),
                    borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.of(context).size.width / 2.8,
                width: MediaQuery.of(context).size.width / 2.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.question_answer,
                          size: 50,
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          ' Số câu hỏi\n trả lời đúng: 9',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ))),
        Container(
            padding: const EdgeInsets.all(20),
            child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 180, 116),
                    borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.of(context).size.width / 2.8,
                width: MediaQuery.of(context).size.width / 2.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.lightbulb,
                          size: 50,
                        )
                      ],
                    ),
                    Row(
                      children: const [
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
