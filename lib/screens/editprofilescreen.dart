import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/padding_shop.dart';
import 'package:heocondihoc/screens/profile.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

enum Sex { Male, Female }

class _EditProfileScreenState extends State<EditProfileScreen> {
  Sex? _sex = Sex.Male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: background,
          child: ListView(
            children: [
              Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomBar()));
                    },
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  child: Column(
                    children: [
                      const CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          radius: 60,
                          child: Icon(
                            Icons.person,
                            size: 100,
                          )),
                      Gap(10),
                      const Text(
                        'Fukbois Si Tình',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      divider,
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Tên người dùng:',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Gap(10),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 1, color: myColor)),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                            ),
                            Gap(20),
                            const Text('Email:',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Gap(10),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 1, color: myColor)),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Giới tính:',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                                Radio(
                                    value: Sex.Male,
                                    groupValue: _sex,
                                    onChanged: (Sex? value) {
                                      setState(() {
                                        _sex = value;
                                      });
                                    }),
                                const Text('Nam',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                                Radio(
                                    value: Sex.Female,
                                    groupValue: _sex,
                                    onChanged: (Sex? value) {
                                      setState(() {
                                        _sex = value;
                                      });
                                    }),
                                const Text('Nữ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: const [
                                Text('Tuổi: ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                                Text('21',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                              ],
                            ),
                            Gap(20),
                            const Text('Tiểu sử:',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Gap(10),
                            TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          width: 1, color: myColor)),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            Gap(20),
                            Container(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => BottomBar()));
                                  },
                                  child: const Text('Cập nhật',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
