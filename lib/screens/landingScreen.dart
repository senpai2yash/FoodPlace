import 'package:flutter/material.dart';
import 'package:foodplace/const/colors.dart';
import 'package:foodplace/screens/signUpScreen.dart';

import '../utils/helper.dart';
import 'loginScreen.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = "/landingScreen";
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Scaffold(
        body: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context)*0.99,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipPath(
                  child: Container(
                    width: double.infinity,
                    height: Helper.getScreenHeight(context) * 0.5,
                    decoration: ShapeDecoration(
                      color: AppColor.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      Helper.getAssetName("login_bg.png", "virtual"),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Helper.getAssetName("foodplace.png", "virtual"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.29,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Flexible(
                        child: Text(
                          "Discover the best foods from mutliple restaurants",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColor.orange),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(
                                side: BorderSide(
                                    color: AppColor.orange, width: 1.5),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                              .pushReplacementNamed(LoginScreen.routeName);
                        },
                          child: Text("Login"),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all(AppColor.orange),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(
                                side: BorderSide(
                                    color: AppColor.orange, width: 1.5),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                              .pushReplacementNamed(SignUpScreen.routeName);
                          },
                          child: Text("Create an Account"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text("Really?"),
              content: const Text("Do you want to close the app?"),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("No")),
                    TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text("Yes"))
              ]);
        });
        return exitApp?? false;

  }
