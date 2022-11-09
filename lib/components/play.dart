import 'package:flutter/material.dart';
import 'package:heocondihoc/models/item.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
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
