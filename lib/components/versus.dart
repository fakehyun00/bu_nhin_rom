import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class Versus extends StatefulWidget {
  @override
  State<Versus> createState() => _VersusState();
}

class _VersusState extends State<Versus> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '1',
              style: TextStyle(color: myColor),
            ),
            title: Text('A D M I N',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '2',
              style: TextStyle(color: myColor),
            ),
            title: Text('Mơi Văn Dũng',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '3',
              style: TextStyle(color: myColor),
            ),
            title: Text('Hưng Apple',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '4',
              style: TextStyle(color: myColor),
            ),
            title: Text('Mị Châu',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '5',
              style: TextStyle(color: myColor),
            ),
            title: Text('Sơn Tinh',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '6',
              style: TextStyle(color: myColor),
            ),
            title: Text('7 Núi',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '7',
              style: TextStyle(color: myColor),
            ),
            title: Text('Gió',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '8',
              style: TextStyle(color: myColor),
            ),
            title: Text('Máy nghe nhạc MP5',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '9',
              style: TextStyle(color: myColor),
            ),
            title: Text('Đại bàng sa mạc',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '10',
              style: TextStyle(color: myColor),
            ),
            title: Text('Bốn Sáu',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
        const SizedBox(
          height: 40,
          child: ListTile(
            leading: Text(
              '11',
              style: TextStyle(color: myColor),
            ),
            title: Text('Bù Nhìn Rơm',
                style: TextStyle(color: myColor, fontWeight: FontWeight.bold)),
          ),
        ),
        divider,
      ],
    ));
  }
}
