import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/padding_shop.dart';

class ViewProfileScreen extends StatefulWidget {
  const ViewProfileScreen({super.key});

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(
                  color: myColor,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomBar()));
                  },
                ),
              ],
            ),
            const CircleAvatar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 100,
                )),
            Gap(20),
            const Text(
              'Fukbois Si Tình',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            divider,
            Gap(20),
            Container(
              color: Colors.white.withOpacity(0.5),
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Tiểu sử: ', style: TextStyle(fontSize: 18)),
                    const Gap(6),
                    const Text(
                        'Nữ sắc suy cho cùng cũng chỉ là da với thịt máu mủ tanh hôi\nCái bẫy luân hồi đau khổ vô lượng kiếp'),
                    const Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                            flex: 6,
                            child: Text('Cấp độ: 1',
                                style: TextStyle(fontSize: 18))),
                        Expanded(
                            flex: 4,
                            child: Text('Cấp bậc: Đồng',
                                style: TextStyle(fontSize: 18))),
                      ],
                    ),
                    const Gap(15),
                    const Text('Mail: abc@gmail.com',
                        style: TextStyle(fontSize: 18)),
                    const Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                            flex: 6,
                            child: Text('Giới tính: Nam',
                                style: TextStyle(fontSize: 18))),
                        Expanded(
                            flex: 4,
                            child: Text('Tuổi: 21',
                                style: TextStyle(fontSize: 18))),
                      ],
                    ),
                    const Gap(15),
                    const Text('Số cấp độ đã hoàn thành: 1',
                        style: TextStyle(fontSize: 18)),
                    const Gap(15),
                    const Text('Ngày tham gia: 22/11/2022',
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
