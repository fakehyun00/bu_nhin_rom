import 'package:email_validator/email_validator.dart';
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpassController.dispose();
    super.dispose();
  }

  Future signUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    if (passwordConfirm()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
  }

  bool passwordConfirm() {
    if (_passwordController.text.trim() == _confirmpassController.text.trim()) {
      return true;
    } else {
      return false;
    }
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
                              child: SizedBox(
                                height: 50,
                                child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (email) => email != null &&
                                            !EmailValidator.validate(email)
                                        ? 'Enter a valid email'
                                        : null,
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
                                    validator: ((value) =>
                                        value != null && value.length < 6
                                            ? 'Mật khẩu không được dưới 6 kí tự'
                                            : null),
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
                                child: TextField(
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
                                        Icons.lock_outline,
                                        color: myColor,
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

                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
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
                              padding: const EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: signUp,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Đăng kí',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                                ),
                              )),
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
