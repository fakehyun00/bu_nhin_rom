import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../components/bottombar.dart';
import '../components/color.dart';
import '../components/item.dart';
import '../components/logo.dart';
import '../routes/app_pages.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: background,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomBar()));
                },
                color: Colors.white,
              ),
            ),
            const ItemBar(),
          ],
        ),
        const Gap(10),
        Container(
          child: logo,
        ),
        const Gap(20),
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/button02.png'))),
            height: 100,
            width: 300,
            child: Center(
                child: SizedBox(
              width: 210,
              height: 100,
              child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.LEVEL_SINGLE);
                },
                child: const Text('Đấu Đơn',
                    style: TextStyle(fontSize: 25, color: myColor)),
              ),
            ))),
        const Gap(20),
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/button3.png'))),
            height: 100,
            width: 300,
            child: Center(
                child: SizedBox(
              width: 210,
              height: 100,
              child: TextButton(
                onPressed: () {},
                child: const Text('Đối Kháng',
                    style: TextStyle(fontSize: 25, color: myColor)),
              ),
            )))
      ]),
    ));
  }
}
