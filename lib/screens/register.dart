import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/logo.dart';
import 'package:heocondihoc/screens/login.dart';
import 'package:heocondihoc/models/color.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen();

  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  bool isHiden = true;
  bool _validateUsername = false;
  bool _validateEmail = false;
  bool _validatePassword = false;
  bool _validateConfirmPassword = false;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool isChecked = false;
  changeHidenPass() {
    if (mounted) {
      setState(() {
        isHiden = !isHiden;
      });
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  // Future signUp() async {
  //   if (passwordConfirmed()) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: _usernameController.text.trim(),
  //         password: _passwordController.text.trim());
  //   }
  // }

  // bool passwordConfirmed() {
  //   if (_passwordController.text.trim() ==
  //       _confirmPasswordController.text.trim()) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: background,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(children: [
                        const Gap(20),
                        logo,
                        const Gap(10),
                        const Text(
                          'Đăng ký',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: myColor),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, bottom: 8, right: 8),
                            child: SizedBox(
                              height: 75,
                              child: TextField(
                                  controller: _usernameController,
                                  style: const TextStyle(color: Colors.white),
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      errorText: _validateUsername
                                          ? 'Tên tài khoản không được bỏ trống!'
                                          : null,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.white),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      prefixIcon: const Icon(
                                        Icons.account_circle,
                                        color: myColor,
                                      ),
                                      hintText: 'Tên đăng nhập',
                                      hintStyle: const TextStyle(
                                        color: Colors.white,
                                      ))),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 75,
                              child: TextField(
                                  // validator: (value) {
                                  //   if (value!.isEmpty) {
                                  //     return 'Please enter some text';
                                  //   }
                                  //   return null;
                                  // },
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(color: myColor),
                                  decoration: InputDecoration(
                                      errorText: _validateEmail
                                          ? 'Email không được bỏ trống'
                                          : null,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: const BorderSide(
                                            width: 1, color: myColor),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      prefixIcon: const Icon(
                                        Icons.mail_outline,
                                        color: myColor,
                                      ),
                                      hintText: 'Email',
                                      hintStyle: const TextStyle(
                                        color: myColor,
                                      ))),
                            )),

                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 75,
                              child: TextField(
                                  controller: _passwordController,
                                  obscureText: isHiden,
                                  style: const TextStyle(color: myColor),
                                  decoration: InputDecoration(
                                    errorText: _validateEmail
                                        ? 'Mật khẩu không được bỏ trống'
                                        : null,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                          width: 1, color: myColor),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    prefixIcon: const Icon(
                                      Icons.lock_outline, color: myColor,
                                      //color: Colors.black,
                                    ),
                                    hintText: 'Mật khẩu',
                                    hintStyle: const TextStyle(color: myColor),
                                    suffix: InkWell(
                                        onTap: changeHidenPass,
                                        child: Transform.translate(
                                          offset: const Offset(0.0, 8.0),
                                          child: Icon(
                                            isHiden
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: myColor,
                                          ),
                                        )),
                                  )),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50,
                              child: TextField(
                                  controller: _confirmPasswordController,
                                  obscureText: isHiden,
                                  style: const TextStyle(color: myColor),
                                  decoration: InputDecoration(
                                    errorText: _validateConfirmPassword
                                        ? 'Mật khẩu không trùng khớp'
                                        : null,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                          width: 1, color: myColor),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    prefixIcon: const Icon(
                                      Icons.lock_outline,
                                      color: myColor,
                                    ),
                                    hintText: 'Nhập lại mật khẩu',
                                    hintStyle: const TextStyle(color: myColor),
                                    suffix: InkWell(
                                        onTap: changeHidenPass,
                                        child: Transform.translate(
                                          offset: const Offset(0.0, 8.0),
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

                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  checkColor: Colors.blue,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                              const Text(
                                'Tôi đồng ý với các điều khoản',
                                style: TextStyle(color: myColor),
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (_usernameController.text.isEmpty) {
                                  _validateUsername = true;
                                } else {
                                  _validateUsername = false;
                                }
                                if (_emailController.text.isEmpty) {
                                  _validateEmail = true;
                                } else {
                                  _validateEmail = false;
                                }
                                if (_passwordController.text.isEmpty) {
                                  _validatePassword = true;
                                } else {
                                  _validatePassword = false;
                                }
                                if (_confirmPasswordController.text.isEmpty) {
                                  _validateConfirmPassword = true;
                                } else {
                                  _validateConfirmPassword = false;
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                //minimumSize: Size(350, 50),
                                // maximumSize: Size(150, 50),
                                backgroundColor: Colors.blue.withOpacity(0.8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text(
                              'Đăng Ký Ngay',
                            ),
                          ),
                        ),

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
                            const Text(
                              'Bạn đã có tài khoản?',
                              style: TextStyle(color: myColor),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                                child: const Text(
                                  'Đăng nhập',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 243, 172, 156)),
                                ))
                          ],
                        )
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
