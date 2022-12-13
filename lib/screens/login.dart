import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/models/color.dart';

import 'package:heocondihoc/models/logo.dart';
import 'package:heocondihoc/screens/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

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
        key: _formkey,
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
                            onSaved: (value) {
                              _emailController.text = value!;
                            },
                            keyboardType: TextInputType.emailAddress,
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
                          onPressed: () {
                            signIn(_emailController.text,
                                _passwordController.text);
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ));
                          },
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

  //login
  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Đăng nhập thành công"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const BottomBar()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
