import 'package:flutter/material.dart';
import 'package:heocondihoc/models/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                BackButton(
                  onPressed: () {},
                )
              ]),
              Column(
                children: [
                  ItemBar(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
