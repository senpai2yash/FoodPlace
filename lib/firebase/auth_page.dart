import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/loginScreen.dart';
import '../screens/homeScreen.dart';

class AuthPage extends StatelessWidget {
  static const routeName = "/authPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return HomeScreen();
          }

          // user is NOT logged in
          else {
            return LoginScreen(onTap: () {  },);
          }
        },
      ),
    );
  }
}