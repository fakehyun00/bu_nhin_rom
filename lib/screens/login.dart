import 'package:firebase_auth/firebase_auth.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';

import 'package:heocondihoc/models/logo.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginScreen({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _keyform = GlobalKey<FormState>();
  String errMessage = '';
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isHidden = true;
  bool isChecked = false;
  changeHiddenPass() {
    if (mounted) {
      setState(() {
        isHidden = !isHidden;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _keyform,
        child: Container(
          decoration: background,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(children: [
                    const Gap(20),
                    logo,
                    const Gap(10),
                    const Text(
                      'Đăng nhập',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: myColor),
                    ),
                    const Gap(10),

                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            controller: _emailController,
                            validator: validateEmail,
                            autofocus: false,
                            style: const TextStyle(color: myColor),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(width: 1, color: myColor),
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
                              ),
                            ),
                          ),
                        )),
                    // Gap(20),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
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
                                    borderRadius: BorderRadius.circular(50)),
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: myColor,
                                ),
                                hintText: 'Mật khẩu',
                                hintStyle: const TextStyle(color: myColor),
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
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: user != null
                              ? null
                              : () async {
                                  if (_keyform.currentState!.validate()) {
                                    try {
                                      await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                        email: _emailController.text,
                                        password: _passwordController.text,
                                      );
                                      errMessage = '';
                                    } on FirebaseAuthException catch (error) {
                                      errMessage = error.message!;
                                    }
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.withOpacity(0.8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text('Đăng nhập'),
                        )),
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
                            const Text(
                              'Nhớ mật khẩu',
                              style: TextStyle(color: myColor),
                            ),
                          ]),
                        ),
                        Expanded(
                          flex: 3,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Quên mật khẩu',
                                style: TextStyle(color: myColor),
                              )),
                        )
                      ],
                    ),
                    const Text(
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
                        const Text(
                          'Bạn chưa có tài khoản?',
                          style: TextStyle(color: myColor),
                        ),
                        GestureDetector(
                          onTap: widget.showRegisterPage,
                          child: const Text(
                            'Đăng kí',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return "Hãy nhập email";
  }

  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return "Hãy nhập mật khẩu";
  }
  return null;
}
