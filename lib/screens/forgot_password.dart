import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:heocondihoc/models/color.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _forgotpassword = TextEditingController();

  @override
  void dispose() {
    _forgotpassword.dispose();
  }

  Future passwordReset() async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: _forgotpassword.text)
        .then((value) => Navigator.of(context).pop());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: background,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hãy nhập email của bạn',
                style: Styles.headLineStyle2.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  controller: _forgotpassword,
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: Styles.headLineStyle2.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w300),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.amber),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: passwordReset,
                color: Colors.white,
                child: const Text('Reset Password'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
