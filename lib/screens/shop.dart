import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/item.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  final color_buy = Color.fromARGB(120, 182, 171, 208);
  final color_buyleft = Color.fromARGB(200, 243, 144, 215);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background_color,
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
          Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CỬA HÀNG',
                style: TextStyle(
                    color: myColor, fontWeight: FontWeight.bold, fontSize: 30),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: color_buy),
            height: 50,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'Mạng',
                    style: TextStyle(color: myColor, fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 140)),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_sharp,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color_buyleft),
            height: 50,
            width: 300,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Một Mạng',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                              padding: EdgeInsets.only(left: 111),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(Icons.money_sharp),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 10, 0)),
                                          Text('5')
                                        ],
                                      )),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color_buyleft),
            height: 50,
            width: 300,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Vài Xu Lẻ',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                              padding: EdgeInsets.only(left: 121),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(Icons.money_sharp),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 10, 0)),
                                          Text('5')
                                        ],
                                      )),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color_buyleft),
            height: 50,
            width: 300,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              'Mạng Vô Hạn',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '1 giờ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        )),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                              padding: EdgeInsets.only(left: 90),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(Icons.money_sharp),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 10, 0)),
                                          Text('5')
                                        ],
                                      )),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color_buyleft),
            height: 50,
            width: 300,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Column(
                          children: [
                            Text(
                              'Mạng Vô Hạn',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '3 giờ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                              padding: EdgeInsets.only(top: 2),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(Icons.money_sharp),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 0, 10, 0)),
                                          Text('5')
                                        ],
                                      )),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
