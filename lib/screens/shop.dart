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
      body: Container(
        decoration: background,
        child: Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ItemBar()],
            ),
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
                      color: Colors.red,
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
            height: 60,
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
                        '1 Mạng',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: EdgeInsets.only(left: 100),
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
                                                  5, 0, 5, 0)),
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
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color_buyleft),
            height: 60,
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
                        '5 Mạng',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: EdgeInsets.only(left: 100),
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
                                                  5, 0, 5, 0)),
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
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color_buyleft),
            height: 60,
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
                        'Vô hạn Mạng\n 1h',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: EdgeInsets.only(left: 63),
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
                                                  5, 0, 5, 0)),
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
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color_buyleft),
            height: 60,
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
                        'Vô hạn mạng\n 3h',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: EdgeInsets.only(left: 63),
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
                                                  5, 0, 5, 0)),
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
        ]),
      ),
    );
  }
}
