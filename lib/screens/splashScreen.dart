import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/helper.dart';
import 'landingScreen.dart';

class SplashScreen extends StatefulWidget {
   static const routeName = "/splashScreen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 late Timer _timer;

  @override
  void initState() {
    _timer = Timer(Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                  Helper.getAssetName("splashIcon.png", "virtual"),
                  fit: BoxFit.fill),
            ),
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Helper.getAssetName("foodplace.png", "virtual"),
                ))
          ],
        ),
      ),
    );
  }
}
