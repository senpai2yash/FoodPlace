import 'package:flutter/material.dart';
import 'package:foodplace/screens/loginScreen.dart';
import 'package:foodplace/screens/signUpScreen.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //initially show login page
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage)
    {
      return LoginScreen(onTap:togglePages);
    } 
    else 
    {
      return SignUpScreen(onTap:togglePages);
    }
  }
}
