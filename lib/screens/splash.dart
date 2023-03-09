import 'package:flutter/material.dart';
import 'package:touch_clone/screens/Login.dart';
//import 'package:touch_clone/screens/home_screen/home_screen.dart';
class SplashScreen extends StatelessWidget {
  static String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route)=>false);
    });
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.5,0.9],
          colors: [
            Colors.orange,
            Colors.yellowAccent,
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Center(
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.yellowAccent,
                  Colors.amber,
                ]
              )
            ),

                    child: Image.asset("assets/img1.png",height: 120,width: 120,))),
      ),
    );
  }
}

