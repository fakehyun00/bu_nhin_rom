import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:heocondihoc/models/logo.dart';
import 'package:heocondihoc/models/color.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showLoginPage;

  const RegisterScreen({Key? key, required this.showLoginPage})
      : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isHidden = true;

  bool isChecked = false;
  changeHiddenPass() {
    if (mounted) {
      setState(() {
        isHidden = !isHidden;
      });
    }
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String errorMessage = '';
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpassController.dispose();
    super.dispose();
  }

  // Future signUp() async {
  //   final isValid = formKey.currentState!.validate();
  //   if (!isValid) return;
  //   if (passwordConfirm()) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: _emailController.text.trim(),
  //       password: _passwordController.text.trim(),
  //     );
  //   }
  // }

  // bool passwordConfirm() {
  //   if (_passwordController.text.trim() == _confirmpassController.text.trim()) {
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
                        key: formKey,
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
                              child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: validateEmail,
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(color: myColor),
                                  decoration: InputDecoration(
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
                                      )))),

                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 50,
                                child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: validatePassword,
                                    controller: _passwordController,
                                    obscureText: isHidden,
                                    style: const TextStyle(color: myColor),
                                    decoration: InputDecoration(
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
                                      hintStyle:
                                          const TextStyle(color: myColor),
                                      suffix: InkWell(
                                          onTap: changeHiddenPass,
                                          child: Transform.translate(
                                            offset: const Offset(0.0, 8.0),
                                            child: Icon(
                                              isHidden
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
                                    validator: ((value) {
                                      value != _passwordController
                                          ? 'Mật khẩu không trùng khớp'
                                          : null;
                                      return null;
                                    }),
                                    controller: _confirmpassController,
                                    obscureText: isHidden,
                                    style: const TextStyle(color: myColor),
                                    decoration: InputDecoration(
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
                                      hintText: 'Nhập lại mật khẩu',
                                      hintStyle:
                                          const TextStyle(color: myColor),
                                      suffix: InkWell(
                                          onTap: changeHiddenPass,
                                          child: Transform.translate(
                                            offset: const Offset(0.0, 8.0),
                                            child: Icon(
                                              isHidden
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: myColor,
                                            ),
                                          )),
                                    )),
                              )),

                          // Gap(20),
                          Center(
                            child: Text(
                              errorMessage,
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  try {
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                    );
                                    errorMessage = '';
                                  } on FirebaseAuthException catch (error) {
                                    errorMessage = error.message!;
                                  }
                                  setState(() {});
                                }
                              },
                              child: const Text(
                                'Đăng kí',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
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
                              GestureDetector(
                                onTap: widget.showLoginPage,
                                child: const Text(
                                  'Đăng nhập',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ]),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return "Hãy nhập email!";
  }
  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return 'Email không hợp lệ!';
  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return "Hãy nhập mật khẩu!";
  }
  String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formPassword)) {
    return '''
      Mật khẩu tối thiểu 6 kí tự,
      bao gồm chữ hoa, chữ thường và số.
      ''';
  }
  return null;
}
