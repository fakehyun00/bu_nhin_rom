import 'package:flutter/material.dart';

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
        Container(
          child: Column(
            children: const <Widget>[
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
