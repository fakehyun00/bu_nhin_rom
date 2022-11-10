import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/item.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isVolume1 = false;
  bool isVolume2 = false;
  changeVolumn1() {
    if (mounted) {
      setState(() {
        isVolume1 = !isVolume1;
      });
    }
  }

  changeVolumn2() {
    if (mounted) {
      setState(() {
        isVolume2 = !isVolume2;
      });
    }
  }

  double _values1 = 5;
  double _values2 = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background_color,
        body: ListView(children: [
          Container(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ItemBar()],
            ),
            Gap(10),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      radius: 40,
                      child: Icon(
                        Icons.person_outline,
                        color: myColor,
                        size: 70,
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Thiên Hưng',
                            style: TextStyle(color: myColor, fontSize: 22)),
                        Gap(10),
                        Text('Level: 2', style: TextStyle(color: myColor))
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.ac_unit_sharp,
                  size: 50,
                  color: Colors.brown,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('100/200', style: TextStyle(color: myColor)),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '===================',
                          style: TextStyle(color: myColor),
                        ),
                        Text(
                          '===================',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                const Icon(
                  Icons.ac_unit_sharp,
                  size: 50,
                  color: Colors.grey,
                )
              ],
            ),
            divider,
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: myColor,
                          borderRadius: BorderRadius.circular(10)),
                      height: 40,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Âm lượng',
                            style: TextStyle(fontSize: 22),
                          ),
                          InkWell(
                            onTap: changeVolumn1,
                            child: Icon(isVolume1
                                ? Icons.volume_up_outlined
                                : Icons.volume_off_outlined),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 9,
                            child: Slider(
                              value: _values1,
                              onChanged: (new_value1) {
                                setState(() {
                                  _values1 = new_value1;
                                });
                              },
                              min: 1,
                              max: 10,
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                _values1.toInt().toString(),
                                style: TextStyle(color: myColor, fontSize: 22),
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
          ])),
          Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: myColor,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nhạc nền',
                          style: TextStyle(fontSize: 22),
                        ),
                        InkWell(
                          onTap: changeVolumn2,
                          child: Icon(isVolume2
                              ? Icons.volume_up_outlined
                              : Icons.volume_off_outlined),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Slider(
                            value: _values2,
                            onChanged: (new_value2) {
                              setState(() {
                                _values2 = new_value2;
                              });
                            },
                            min: 1,
                            max: 10,
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              _values2.toInt().toString(),
                              style: TextStyle(color: myColor, fontSize: 22),
                            ))
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.fromLTRB(35, 20, 35, 20),
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 180, 116),
                  borderRadius: BorderRadius.circular(10)),
              height: 40,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Đăng xuất',
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
