import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/models/logo.dart';
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
      backgroundColor: Color.fromARGB(255, 231, 238, 244),
      body: ListView(
        //decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage("assets/bg1.jpg"),
        //   fit: BoxFit.fill,
        // ),

        //),
        children: [
          Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(children: [
                Gap(80),
                logo,
                Gap(10),
                const Text(
                  'Đăng nhập',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                Gap(10),

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
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: const Icon(Icons.account_circle),
                              hintText: 'Tên đăng nhập',
                              hintStyle: const TextStyle(
                                color: Colors.black,
                              ))),
                    )),
                // Gap(20),
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
                            hintStyle: const TextStyle(color: Colors.black),
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
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen())),
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
                            checkColor: Colors.white,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                        Text('Nhớ mật khẩu'),
                      ]),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextButton(
                          onPressed: () {}, child: Text('Quên mật khẩu')),
                    )
                  ],
                ),
                Text('Hoặc đăng nhập bằng'),
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
                    Text('Bạn chưa có tài khoản?'),
                    TextButton(onPressed: () {}, child: Text('Đăng ký ngay'))
                  ],
                )
              ]))
        ],
      ),
    );
  }
}
