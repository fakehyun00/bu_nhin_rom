import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/header_info.dart';
import 'package:heocondihoc/models/item.dart';
import 'package:heocondihoc/models/padding_shop.dart';
import 'package:heocondihoc/screens/login.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isVolume1 = false;
  bool isVolume2 = false;
  changeVolumn1() {
    if (mounted) {
      setState(() {
        isVolume1 = !isVolume1;
      });
    }
  }

  changeVolumn2() {
    if (mounted) {
      setState(() {
        isVolume2 = !isVolume2;
      });
    }
  }

  double _values1 = 5;
  double _values2 = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: background,
      child: Column(children: [
        const ItemBar(),
        const HeaderInfo(),
        Container(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Column(children: [
              divider,
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: myColor,
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Âm lượng',
                              style: TextStyle(fontSize: 22),
                            ),
                            InkWell(
                              onTap: changeVolumn1,
                              child: Icon(isVolume1
                                  ? Icons.volume_up_outlined
                                  : Icons.volume_off_outlined),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 9,
                              child: Slider(
                                //activeColor: _changeSlider, //màu của thanh slider
                                //thumbColor: Colors.amber, //màu của nút tròn
                                value: _values1,
                                onChanged: (newValue1) {
                                  setState(() {
                                    _values1 = newValue1;
                                  });
                                },
                                min: 1,
                                max: 10,
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  _values1.toInt().toString(),
                                  style: const TextStyle(
                                      color: myColor, fontSize: 22),
                                ))
                          ],
                        ),
                      ),
                    ],
                  )),
            ])),
        Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: myColor, borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Nhạc nền',
                        style: TextStyle(fontSize: 22),
                      ),
                      InkWell(
                        onTap: changeVolumn2,
                        child: Icon(isVolume2
                            ? Icons.volume_up_outlined
                            : Icons.volume_off_outlined),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 9,
                        child: Slider(
                          value: _values2,
                          onChanged: (newValue2) {
                            setState(() {
                              _values2 = newValue2;
                            });
                          },
                          min: 1,
                          max: 10,
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            _values2.toInt().toString(),
                            style:
                                const TextStyle(color: myColor, fontSize: 22),
                          ))
                    ],
                  ),
                ),
              ],
            )),
        Container(
            padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith(getColor1),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 243, 172, 156),
                          content: const Text(
                            'Bạn muốn đăng xuất ?',
                            textAlign: TextAlign.center,
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                getColor3)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      logout(context);
                                    },
                                    child: const Text('Đồng ý')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Quay lại',
                                      style: TextStyle(color: Colors.black),
                                    ))
                              ],
                            )
                          ],
                        )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Đăng xuất', style: TextStyle(fontSize: 22))
                  ],
                ),
              ),
            )),
        const Image(
            width: 200,
            height: 200,
            image: NetworkImage(
              'https://kynguyenlamdep.com/wp-content/uploads/2022/08/meme-meo-loading.jpg',
            ))
        // Container(
        //   padding: EdgeInsets.fromLTRB(35, 20, 35, 20),
        //   child: Container(

        //     padding: EdgeInsets.only(left: 15, right: 15),
        //     decoration: BoxDecoration(
        //         color: Color.fromARGB(255, 232, 180, 116),
        //         borderRadius: BorderRadius.circular(10)),
        //     height: 40,
        //     width: MediaQuery.of(context).size.width / 1.2,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Text(
        //           'Đăng xuất',
        //           style: TextStyle(fontSize: 22),
        //         )
        //       ],
        //     ),
        //   ),
        // )
      ]),
    ));
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
