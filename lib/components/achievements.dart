import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Achievements extends StatefulWidget {
  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        new Container(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text(
                    'Kẻ Săn Quiz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.green,
                  subtitle: Text('Chơi 3 ngày liên tiếp'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Kẻ Săn Quiz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.green,
                  subtitle: Text('Chơi 3 ngày liên tiếp'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Kẻ Săn Quiz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.green,
                  subtitle: Text('Chơi 3 ngày liên tiếp'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Kẻ Săn Quiz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.green,
                  subtitle: Text('Chơi 3 ngày liên tiếp'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Kẻ Săn Quiz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.green,
                  subtitle: Text('Chơi 3 ngày liên tiếp'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Kẻ Săn Quiz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.green,
                  subtitle: Text('Chơi 3 ngày liên tiếp'),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
