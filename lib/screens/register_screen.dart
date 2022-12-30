import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

import '../components/color.dart';
import '../components/logo.dart';
import '../models/users_model.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  bool isHiden = true;

  final _auth = FirebaseAuth.instance;

  final bool _validateConfirmPassword = false;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: background,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Form(
                          key: _formKey,
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
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        RegExp regex = RegExp(r'^.{3,}$');
                                        if (value!.isEmpty) {
                                          return "Hãy nhập tên của bạn";
                                        }
                                        if (!regex.hasMatch(value)) {
                                          return ("Tên bạn phải ít nhất 3 kí tự");
                                        }

                                        return null;
                                      },
                                      controller: _usernameController,
                                      keyboardType: TextInputType.emailAddress,
                                      style: const TextStyle(color: myColor),
                                      decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                          hintText: 'Username',
                                          hintStyle: const TextStyle(
                                            color: myColor,
                                          ))),
                                )),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Hãy nhập email của bạn";
                                        }
                                        if (!RegExp(
                                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                            .hasMatch(value)) {
                                          return "Hãy nhập đúng email";
                                        }

                                        return null;
                                      },
                                      controller: _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      style: const TextStyle(color: myColor),
                                      decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                  height: 50,
                                  child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        RegExp regex = RegExp(r'^.{6,}$');
                                        if (value!.isEmpty) {
                                          return "Hãy nhập mật khẩu của bạn";
                                        }
                                        if (!regex.hasMatch(value)) {
                                          return ("Mật khẩu phải ít nhất 6 kí tự");
                                        }
                                        return null;
                                      },
                                      controller: _passwordController,
                                      obscureText: isHiden,
                                      style: const TextStyle(color: myColor),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
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
                                        hintStyle:
                                            const TextStyle(color: myColor),
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
                                  child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        if (_confirmPasswordController.text !=
                                            _passwordController.text) {
                                          return "Mật khẩu không trùng khớp";
                                        }
                                        return null;
                                      },
                                      controller: _confirmPasswordController,
                                      obscureText: isHiden,
                                      style: const TextStyle(color: myColor),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
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
                                        hintText: 'Nhập lại mật khẩu',
                                        hintStyle:
                                            const TextStyle(color: myColor),
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
                              padding: const EdgeInsets.all(8),
                              child: ElevatedButton(
                                onPressed: () {
                                  signUp(_emailController.text,
                                      _passwordController.text);
                                },
                                style: ElevatedButton.styleFrom(
                                    //minimumSize: Size(350, 50),
                                    // maximumSize: Size(150, 50),
                                    backgroundColor:
                                        Colors.blue.withOpacity(0.8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: const Text(
                                  'Đăng Ký Ngay',
                                ),
                              ),
                            ),
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
                                                  LoginScreen()));
                                    },
                                    child: const Text(
                                      'Đăng nhập',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 243, 172, 156)),
                                    ))
                              ],
                            )
                          ])))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.username = _usernameController.text;
    userModel.password = _passwordController.text;
    userModel.description = null;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Tạo tài khoản thành công");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false);
  }
}
