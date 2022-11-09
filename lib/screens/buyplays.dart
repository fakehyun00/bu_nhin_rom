import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/item.dart';

class BuyPlays extends StatefulWidget {
  const BuyPlays({super.key});

  @override
  State<BuyPlays> createState() => _BuyPlaysState();
}

class _BuyPlaysState extends State<BuyPlays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background_color,
        body: Column(children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: background_color,
                    foregroundColor: myColor,
                    shadowColor: background_color,
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  label: Text('')),
              Padding(padding: EdgeInsets.only(left: 230)),
              Icon(
                Icons.star,
                size: 22,
                color: Colors.amber[600],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: myColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '100',
                  style: TextStyle(color: myColor),
                ),
              ),
              Icon(
                Icons.cake,
                size: 22,
                color: Colors.amber[600],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: myColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '100',
                  style: TextStyle(color: myColor),
                ),
              ),
              Icon(
                Icons.favorite,
                size: 22,
                color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: myColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  '100',
                  style: TextStyle(color: myColor),
                ),
              ),
            ]),
          ),
        ]));
  }
}
