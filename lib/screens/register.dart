import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/screens/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen();

  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
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
      backgroundColor: Color.fromARGB(255, 231, 238, 244),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(children: [
                      Gap(60),
                      logo,
                      Gap(20),
                      const Text(
                        'Đăng ký',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                                autofocus: true,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                          width: 1, color: Colors.black),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    prefixIcon:
                                        const Icon(Icons.account_circle),
                                    hintText: 'Tên đăng nhập',
                                    hintStyle: const TextStyle(
                                      color: Colors.black,
                                    ))),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                          width: 1, color: Colors.black),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    prefixIcon: const Icon(Icons.mail_outline),
                                    hintText: 'Gmail',
                                    hintStyle: const TextStyle(
                                      color: Colors.black,
                                    ))),
                          )),

                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                                obscureText: isHiden,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    //color: Colors.black,
                                  ),
                                  hintText: 'Mật khẩu',
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                  suffix: InkWell(
                                      onTap: changeHidenPass,
                                      child: Transform.translate(
                                        offset: Offset(0.0, 8.0),
                                        child: Icon(isHiden
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                      )),
                                )),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                                obscureText: isHiden,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    //color: Colors.black,
                                  ),
                                  hintText: 'Nhập lại mật khẩu',
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                  suffix: InkWell(
                                      onTap: changeHidenPass,
                                      child: Transform.translate(
                                        offset: Offset(0.0, 8.0),
                                        child: Icon(isHiden
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                      )),
                                )),
                          )),
                      // Gap(20),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () => showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text('Đăng ký thành công'),
                                    content: Text(
                                        'Chào mừng bạn đến với Heo Con Đi Học'),
                                    actions: [
                                      OutlinedButton(
                                          onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen(),
                                              )),
                                          child: Text('Đăng nhập'))
                                    ],
                                  )),
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => LoginScreen()))
                          child: Text('Đăng Ký Ngay'),
                          style: ElevatedButton.styleFrom(
                              //minimumSize: Size(350, 50),
                              // maximumSize: Size(150, 50),
                              backgroundColor: Colors.blue.withOpacity(0.8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                            const Text('Tôi đồng ý với các điều khoản'),
                          ]),

                      // Expanded(
                      //   flex: 3,
                      //   child: TextButton(
                      //       onPressed: () {}, child: Text('Quên mật khẩu')),
                      // )

                      // Text('Hoặc đăng nhập bằng'),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     TextButton(
                      //         onPressed: () {},
                      //         child: const Icon(
                      //           Icons.facebook_outlined, size: 40,
                      //           // height: 30,
                      //           // width: 30,
                      //         )),
                      //     TextButton(
                      //         onPressed: () {},
                      //         child: const Image(
                      //           height: 40,
                      //           width: 40,
                      //           image: NetworkImage(
                      //               'https://mailmeteor.com/logos/assets/PNG/Gmail_Logo_512px.png'),
                      //         ))
                      //   ],
                      // ),
                      // SignInButton(
                      //   Buttons.FacebookNew,
                      //   onPressed: () {},
                      //   text: 'Đăng nhập bằng Facebook',
                      // ),
                      // SignInButton(
                      //   Buttons.Google,

                      //   onPressed: () {},
                      //   text: 'Đăng nhập bằng Google',
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Bạn đã có tài khoản?'),
                          TextButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen())),
                              child: Text('Đăng nhập'))
                        ],
                      )
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
