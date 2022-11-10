import 'package:flutter/material.dart';
import 'package:heocondihoc/screens/history.dart';
import 'package:heocondihoc/components/bottombar.dart';
import 'package:heocondihoc/screens/login.dart';
import 'package:heocondihoc/screens/menu.dart';
import 'package:heocondihoc/screens/pay.dart';
import 'package:heocondihoc/screens/register.dart';

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
      home: const BottomBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
