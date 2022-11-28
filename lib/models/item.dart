import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';

class ItemBar extends StatefulWidget {
  const ItemBar({super.key});

  @override
  State<ItemBar> createState() => _ItemBarState();
}

class _ItemBarState extends State<ItemBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.star,
          size: 22,
          color: Colors.amber[600],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
          decoration: BoxDecoration(
              border: Border.all(
                color: myColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50)),
          child: Text('100', style: TextStyle(color: myColor)),
        ),
        Icon(
          Icons.cake,
          size: 22,
          color: Colors.amber[600],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
          decoration: BoxDecoration(
              border: Border.all(
                color: myColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50)),
          child: Text('100', style: TextStyle(color: myColor)),
        ),
        Icon(
          Icons.favorite,
          size: 22,
          color: Colors.red,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
          decoration: BoxDecoration(
              border: Border.all(
                color: myColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50)),
          child: Text(
            '100',
            style: TextStyle(color: myColor),
          ),
        ),
      ],
    );
  }
}
