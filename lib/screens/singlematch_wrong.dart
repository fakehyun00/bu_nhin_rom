import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:heocondihoc/models/color.dart';

class SingleMatch_AnswerWrong extends StatefulWidget {
  const SingleMatch_AnswerWrong({super.key});

  @override
  State<SingleMatch_AnswerWrong> createState() =>
      _SingleMatchAnswerWrongState();
}

class _SingleMatchAnswerWrongState extends State<SingleMatch_AnswerWrong> {
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
          Container(
            padding: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: background_color,
                    foregroundColor: myColor,
                    shadowColor: background_color,
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_circle_left_outlined),
                  label: Text('')),
              Padding(padding: EdgeInsets.only(left: 100)),
              Icon(
                Icons.star,
                size: 22,
                color: Colors.amber[600],
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: myColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '100',
                  style: TextStyle(color: myColor),
                ),
              ),
              Icon(
                Icons.cake,
                size: 22,
                color: Colors.amber[600],
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: myColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '100',
                  style: TextStyle(color: myColor),
                ),
              ),
              Icon(
                Icons.favorite,
                size: 22,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: myColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '100',
                  style: TextStyle(color: myColor),
                ),
              ),
            ]),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black54,
                ),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black54,
                ),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black54,
                ),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black54,
                ),
                onPressed: () {},
                child: Text('D. 2000 năm trước'),
              )),
          Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(40, 35, 40, 15),
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
