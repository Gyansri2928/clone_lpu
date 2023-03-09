import 'package:touch_clone/screens/Datesheet/Datesheet.dart';
import 'package:touch_clone/screens/Fee%20Screen/feescreen.dart';
import 'package:touch_clone/screens/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:touch_clone/screens/home_screen/home_screen.dart';
import 'package:touch_clone/screens/my_profile/myprofile.dart';
import 'package:touch_clone/screens/splash.dart';

Map<String, WidgetBuilder> routes ={
  SplashScreen.routeName : (context)=>SplashScreen(),

  LoginScreen.routeName:(context)=>LoginScreen(),
  HomeScreen.routeName:(context)=>HomeScreen(),
  MyProfile.routeName:(context)=>MyProfile(),
  FeeScreen.routeName: (context)=>FeeScreen(),
  DateSheetScreen.routeName: (context)=>DateSheetScreen(),
};