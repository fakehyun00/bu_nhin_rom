import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/logo.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        child: ListView(children: [
          Container(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomBar()));
                    },
                    color: myColor,
                  )
                ],
              ),
              logo,
              const Gap(10),
              const Text(
                'Nạp xu',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: myColor),
              ),
              Divider(
                thickness: 1,
                color: Colors.white.withOpacity(0.8),
              ),
              const Gap(20),
              Padding(
                  padding: padding_item_shop,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Row(children: [
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text('Gói 20 xu '),
                                Icon(Icons.money),
                              ],
                            )),
                        const Expanded(flex: 2, child: Text('19.000đ'))
                      ]))),
              Padding(
                  padding: padding_item_shop,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Row(children: [
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text('Gói 55 xu '),
                                Icon(Icons.money),
                              ],
                            )),
                        const Expanded(flex: 2, child: Text('49.000đ'))
                      ]))),
              Padding(
                  padding: padding_item_shop,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Row(children: [
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text('Gói 20 xu '),
                                Icon(Icons.money),
                              ],
                            )),
                        const Expanded(flex: 2, child: Text('19.000đ'))
                      ]))),
              Padding(
                  padding: padding_item_shop,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: Row(children: [
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text('Gói 230 xu '),
                                Icon(Icons.money),
                                Text('+ 5 '),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.pink,
                                )
                              ],
                            )),
                        const Expanded(flex: 2, child: Text('19.000đ'))
                      ])))
            ],
          )),
        ]),
      ),
    );
  }
}
