import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/item.dart';

class HeaderInfo extends StatefulWidget {
  const HeaderInfo({super.key});

  @override
  State<HeaderInfo> createState() => _HeaderInfoState();
}

class _HeaderInfoState extends State<HeaderInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
