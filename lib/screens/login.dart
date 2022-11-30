import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';

import 'package:heocondihoc/models/logo.dart';

import 'package:heocondihoc/components/bottombar.dart';

import 'package:heocondihoc/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  bool isHiden = true;
  bool isChecked = false;
  changeHidenPass() {
    if (mounted) {
      setState(() {
        isHiden = !isHiden;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: background,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  Gap(20),
                  logo,
                  Gap(10),
                  const Text(
                    'Đăng nhập',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: myColor),
                  ),
                  Gap(10),

                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                            autofocus: false,
                            style: const TextStyle(color: myColor),
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: const BorderSide(
                                      width: 1, color: myColor),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                prefixIcon: const Icon(
                                  Icons.account_circle,
                                  color: myColor,
                                ),
                                hintText: 'Tên đăng nhập',
                                hintStyle: const TextStyle(
                                  color: myColor,
                                ))),
                      )),
                  // Gap(20),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                            obscureText: isHiden,
                            style: const TextStyle(color: myColor),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(width: 1, color: myColor),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: myColor,
                              ),
                              hintText: 'Mật khẩu',
                              hintStyle: const TextStyle(color: myColor),
                              suffix: InkWell(
                                  onTap: changeHidenPass,
                                  child: Transform.translate(
                                    offset: Offset(0.0, 8.0),
                                    child: Icon(
                                      isHiden
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: myColor,
                                    ),
                                  )),
                            )),
                      )),
                  // Gap(20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomBar(),
                            ));
                      },
                      child: Text('Đăng nhập'),
                      style: ElevatedButton.styleFrom(
                          //minimumSize: Size(350, 50),
                          //maximumSize: Size(100, 50),
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Row(children: [
                          Checkbox(
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              checkColor: Colors.blue,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text(
                            'Nhớ mật khẩu',
                            style: TextStyle(color: myColor),
                          ),
                        ]),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Quên mật khẩu',
                              style: TextStyle(color: myColor),
                            )),
                      )
                    ],
                  ),
                  Text(
                    'Hoặc đăng nhập bằng',
                    style: TextStyle(color: myColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: NetworkImage(
                              'https://www.edigitalagency.com.au/wp-content/uploads/Facebook-logo-blue-circle-large-transparent-png.png',
                            ),
                            height: 30,
                            width: 30,
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Image(
                            height: 30,
                            width: 30,
                            image: NetworkImage(
                                'https://mailmeteor.com/logos/assets/PNG/Gmail_Logo_512px.png'),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bạn chưa có tài khoản?',
                        style: TextStyle(color: myColor),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
                          child: Text(
                            'Đăng ký ngay',
                            style: TextStyle(
                                color: Color.fromARGB(255, 243, 172, 156)),
                          ))
                    ],
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
