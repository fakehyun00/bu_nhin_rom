import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/components/bottombar.dart';
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
        HeaderInfo(),
        Container(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Column(children: [
              divider,
              Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: myColor,
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
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
                                onChanged: (new_value1) {
                                  setState(() {
                                    _values1 = new_value1;
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
                                  style:
                                      TextStyle(color: myColor, fontSize: 22),
                                ))
                          ],
                        ),
                      ),
                    ],
                  )),
            ])),
        Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: myColor, borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
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
                          onChanged: (new_value2) {
                            setState(() {
                              _values2 = new_value2;
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
                            style: TextStyle(color: myColor, fontSize: 22),
                          ))
                    ],
                  ),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.fromLTRB(35, 0, 35, 10),
            child: Container(
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
                          backgroundColor: Color.fromARGB(255, 243, 172, 156),
                          content: Text(
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginScreen(),
                                          ));
                                    },
                                    child: Text('Đồng ý')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Quay lại',
                                      style: TextStyle(color: Colors.black),
                                    ))
                              ],
                            )
                          ],
                        )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Đăng xuất', style: TextStyle(fontSize: 22))],
                ),
              ),
            )),
        Image(
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
}
