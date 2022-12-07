import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/padding_shop.dart';

import '../models/item.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: background,
            child: Column(children: [
              const ItemBar(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const Gap(20),
                    const Text(
                      'Lịch sử',
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: myColor),
                    ),
                    divider,
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  Column(children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Card(
                          child: ListTile(
                            leading: Icon(Icons.topic_outlined),
                            title: Text('Ải 1: Gà con đi tiểu học',
                                style: TextStyle(fontSize: 20)),
                            subtitle: Text(
                              'Điểm cao nhất:90',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
                    const Gap(20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Card(
                          child: ListTile(
                            leading: Icon(Icons.topic_outlined),
                            title: Text('Ải 1: Gà con đi tiểu học',
                                style: TextStyle(fontSize: 20)),
                            subtitle: Text(
                              'Điểm cao nhất:90',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
                    const Gap(20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Card(
                          child: ListTile(
                            leading: Icon(Icons.topic_outlined),
                            title: Text('Ải 1: Gà con đi tiểu học',
                                style: TextStyle(fontSize: 20)),
                            subtitle: Text(
                              'Điểm cao nhất:90',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
                    const Gap(20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Card(
                          child: ListTile(
                            leading: Icon(Icons.topic_outlined),
                            title: Text('Ải 1: Gà con đi tiểu học',
                                style: TextStyle(fontSize: 20)),
                            subtitle: Text(
                              'Điểm cao nhất:90',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
                    const Gap(20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Card(
                          child: ListTile(
                            leading: Icon(Icons.topic_outlined),
                            title: Text('Ải 1: Gà con đi tiểu học',
                                style: TextStyle(fontSize: 20)),
                            subtitle: Text(
                              'Điểm cao nhất:90',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
                    const Gap(20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Card(
                          child: ListTile(
                            leading: Icon(Icons.topic_outlined),
                            title: Text('Ải 1: Gà con đi tiểu học',
                                style: TextStyle(fontSize: 20)),
                            subtitle: Text(
                              'Điểm cao nhất:90',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
                    const Gap(20),
                  ])
                ],
              )),
            ])));
  }
}
