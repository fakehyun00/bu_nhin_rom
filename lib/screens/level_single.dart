import 'package:flutter/material.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/logo.dart';
import 'package:heocondihoc/screens/singlematch.dart';

import '../models/item.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
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
                padding: EdgeInsets.only(top: 10),
                child: BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomBar()));
                  },
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ItemBar(),
              ),
            ],
          ),
          SingleChildScrollView(
              padding: EdgeInsets.only(top: 200),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      logo,
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingleMatch()));
                          },
                          child: Text('Ải 1', style: Styles.headLineStyle1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      logo,
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingleMatch()));
                          },
                          child: Text('Ải 2', style: Styles.headLineStyle1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      logo,
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingleMatch()));
                          },
                          child: Text('Ải 3', style: Styles.headLineStyle1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      logo,
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingleMatch()));
                          },
                          child: Text('Ải 4', style: Styles.headLineStyle1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      logo,
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingleMatch()));
                          },
                          child: Text('Ải 5', style: Styles.headLineStyle1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      logo,
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingleMatch()));
                          },
                          child: Text('Ải 6', style: Styles.headLineStyle1),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
