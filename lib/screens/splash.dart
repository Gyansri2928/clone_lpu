import 'package:flutter/material.dart';
import 'package:touch_clone/screens/Login.dart';
import 'package:avatar_glow/avatar_glow.dart';

//import 'package:touch_clone/screens/home_screen/home_screen.dart';
class SplashScreen extends StatelessWidget {
  static String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
            0.5,
            0.9
          ],
              colors: [
            Colors.orange,
            Colors.yellowAccent,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child:  AvatarGlow(
                    child: Image.asset(
                  "assets/img1.png",
                  height: 120,
                  width: 120,
                ),
                  endRadius: 100,
                  glowColor: Colors.yellowAccent,
              duration: Duration(milliseconds: 1300),
                )
            )),
    );
  }
}
