import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/logo.dart';
import 'package:heocondihoc/models/padding_shop.dart';
import 'package:heocondihoc/screens/home.dart';

class NapTienScreen extends StatefulWidget {
  const NapTienScreen({super.key});

  @override
  State<NapTienScreen> createState() => _NapTienScreenState();
}

class _NapTienScreenState extends State<NapTienScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      body: ListView(children: [
        Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomBar()));
                  },
                  color: myColor,
                )
              ],
            ),
            logo,
            Gap(10),
            const Text(
              'Nạp xu',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30, color: myColor),
            ),
            Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.8),
            ),
            Gap(20),
            Padding(
                padding: padding_item_shop,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      Expanded(
                          flex: 8,
                          child: Row(
                            children: [
                              Text('Gói 20 xu '),
                              Icon(Icons.money),
                            ],
                          )),
                      Expanded(flex: 2, child: Text('19.000đ'))
                    ]))),
            Padding(
                padding: padding_item_shop,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      Expanded(
                          flex: 8,
                          child: Row(
                            children: [
                              Text('Gói 55 xu '),
                              Icon(Icons.money),
                            ],
                          )),
                      Expanded(flex: 2, child: Text('49.000đ'))
                    ]))),
            Padding(
                padding: padding_item_shop,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      Expanded(
                          flex: 8,
                          child: Row(
                            children: [
                              Text('Gói 20 xu '),
                              Icon(Icons.money),
                            ],
                          )),
                      Expanded(flex: 2, child: Text('19.000đ'))
                    ]))),
            Padding(
                padding: padding_item_shop,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {},
                    child: Row(children: [
                      Expanded(
                          flex: 8,
                          child: Row(
                            children: [
                              Text('Gói 230 xu '),
                              Icon(Icons.money),
                              Text('+ 5 '),
                              Icon(
                                Icons.favorite,
                                color: Colors.pink,
                              )
                            ],
                          )),
                      Expanded(flex: 2, child: Text('19.000đ'))
                    ])))
          ],
        )),
      ]),
    );
  }
}
