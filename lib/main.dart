import 'package:flutter/material.dart';
import 'package:heocondihoc/screens/history.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/screens/home.dart';
import 'package:heocondihoc/screens/login.dart';
import 'package:heocondihoc/screens/menu.dart';
import 'package:heocondihoc/screens/pay.dart';
import 'package:heocondihoc/screens/profile.dart';
import 'package:heocondihoc/screens/register.dart';
import 'package:heocondihoc/screens/buyplays.dart';
import 'package:heocondihoc/screens/singlematch.dart';
import 'package:heocondihoc/screens/singlematch_answer.dart';
import 'package:heocondihoc/screens/singlematch_wrong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
