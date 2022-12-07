import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/item.dart';
import 'package:heocondihoc/screens/pay_bill.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  final color_buy = const Color.fromARGB(120, 182, 171, 208);
  final color_buyleft = const Color.fromARGB(200, 243, 144, 215);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        child: Column(children: [
          const ItemBar(),
          const Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'CỬA HÀNG',
                style: TextStyle(
                    color: myColor, fontWeight: FontWeight.bold, fontSize: 30),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: color_buy),
            height: 50,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2,
                  child: const Text(
                    'Mạng',
                    style: TextStyle(color: myColor, fontSize: 20),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 140)),
                Row(
                  children: const [
                    Icon(
                      Icons.favorite_sharp,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            margin: const EdgeInsets.all(10),
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
                      margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        '1 Mạng',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: const EdgeInsets.only(left: 100),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PayBillScreen()));
                                      },
                                      child: Row(
                                        children: const [
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
            margin: const EdgeInsets.all(10),
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
                      margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        '5 Mạng',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: const EdgeInsets.only(left: 100),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {},
                                      child: Row(
                                        children: const [
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
            margin: const EdgeInsets.all(10),
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
                      margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Vô hạn Mạng\n 1h',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: const EdgeInsets.only(left: 63),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {},
                                      child: Row(
                                        children: const [
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
            margin: const EdgeInsets.all(10),
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
                      margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Vô hạn mạng\n 3h',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(26, 10, 0, 0),
                              padding: const EdgeInsets.only(left: 63),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.lightBlueAccent),
                                      onPressed: () {},
                                      child: Row(
                                        children: const [
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
