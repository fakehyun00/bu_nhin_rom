import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import '../models/item.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      body: ListView(
        children: [
          Container(
            child: HeaderInfo(),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Text(
                  'Thành tích',
                  style: TextStyle(fontSize: 39),
                ),
              ),
              Gap(1),
              Container(
                decoration: BoxDecoration(
                    color: Colors.pink[50],
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Text(
                  'Thống kê',
                  style: TextStyle(fontSize: 39),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      margin: EdgeInsets.only(right: 175, top: 20, left: 5),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 110),
                              child: Icon(
                                Icons.book_rounded,
                                size: 50,
                              )),
                          Text(
                            'Số cấp độ \nđã hoàn thành: 1      ',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      margin: EdgeInsets.only(right: 175, top: 20, left: 5),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 110),
                              child: Icon(
                                Icons.book_rounded,
                                size: 50,
                              )),
                          Text(
                            'Số cấp độ \nđã hoàn thành: 1      ',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
