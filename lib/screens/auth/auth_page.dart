import 'package:flutter/src/widgets/framework.dart';
import 'package:heocondihoc/screens/login.dart';
import 'package:heocondihoc/screens/register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        showRegisterPage: toggleScreen,
      );
    } else {
      return RegisterScreen(
        showLoginPage: toggleScreen,
      );
    }
  }
}
