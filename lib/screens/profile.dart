import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      body: Column(children: [
        Container(
          child: HeaderInfo(),
        ),
        divider,
        NavigationBar(
            height: 30,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              // ElevatedButton(onPressed: () {}, child: Text('Thành Tích')),
              // ElevatedButton(onPressed: () {}, child: Text('Thống Kê')),
              NavigationDestination(
                icon: Text('Thành Tích'),
                label: '',
              ),
              NavigationDestination(icon: Text('Thống Kê'), label: ''),
            ]),
        Gap(20),
        <Widget>[
          Container(
            child: Column(
              children: const [
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
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 192, 156, 228),
                                borderRadius: BorderRadius.circular(10)),
                            height: MediaQuery.of(context).size.width / 2.8,
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.layers,
                                      size: 50,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' Số cấp độ đã \n hoàn thành: 1',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 152, 220, 228),
                                borderRadius: BorderRadius.circular(10)),
                            height: MediaQuery.of(context).size.width / 2.8,
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 50,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' Ngày tham gia:\n 11/11/2022',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 176, 212, 124),
                                borderRadius: BorderRadius.circular(10)),
                            height: MediaQuery.of(context).size.width / 2.8,
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.question_answer,
                                      size: 50,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' Số câu hỏi\n trả lời đúng: 9',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ))),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 180, 116),
                                borderRadius: BorderRadius.circular(10)),
                            height: MediaQuery.of(context).size.width / 2.8,
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.lightbulb,
                                      size: 50,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' Tỉ lệ trả lời\n đúng: 80%',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ))),
                  ],
                )
              ],
            ),
          ),
        ][currentPageIndex],
      ]),
    );
  }
}
