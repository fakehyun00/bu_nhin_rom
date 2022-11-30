import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/padding_shop.dart';

import '../models/item.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        child: ListView(children: [
          Container(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Column(
                      children: [
                        ItemBar(),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
              Text(
                'Lịch sử',
                style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold, color: myColor),
              ),
              divider,
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Đến giữa thế kỉ XIX, quyền hành \nthực tế của Nhật Bản nằm trong \ntay lực lượng chính trị nào?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Đến giữa thế kỉ XIX, các nước tư \nbản phương Tây đã sư dụng \nchính sách hay biện pháp gì để \nép Nhật Bản phải"mở cửa"',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Ý nào không phản ánh đúng \ntình hình kinh tế của Nhật \nBản từ đầu thế kỉ XIX đến trước \nnăm 1868?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Đến giữa thế kỉ XIX, quyền hành \nthực tế của Nhật Bản nằm trong \ntay lực lượng chính trị nào?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Đến giữa thế kỉ XIX, quyền hành \nthực tế của Nhật Bản nằm trong \ntay lực lượng chính trị nào?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Đến giữa thế kỉ XIX, quyền hành \nthực tế của Nhật Bản nằm trong \ntay lực lượng chính trị nào?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Đến giữa thế kỉ XIX, quyền hành \nthực tế của Nhật Bản nằm trong \ntay lực lượng chính trị nào?',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
