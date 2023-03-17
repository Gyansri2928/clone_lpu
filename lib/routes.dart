import 'package:touch_clone/screens/Assignments/assignments.dart';
import 'package:touch_clone/screens/Datesheet/Datesheet.dart';
import 'package:touch_clone/screens/FeeScreen/feescreen.dart';
import 'package:touch_clone/screens/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:touch_clone/screens/Results/Results.dart';
import 'package:touch_clone/screens/home_screen/home_screen.dart';
import 'package:touch_clone/screens/my_profile/myprofile.dart';
import 'package:touch_clone/screens/splash.dart';
import 'package:touch_clone/screens/timetable/timetable.dart';

Map<String, WidgetBuilder> routes ={
  SplashScreen.routeName : (context)=>SplashScreen(),
  LoginScreen.routeName:(context)=>LoginScreen(),
  HomeScreen.routeName:(context)=>const HomeScreen(),
  MyProfile.routeName:(context)=>const MyProfile(),
  FeeScreen.routename: (context)=>const FeeScreen(),
  DateSheetScreen.routeName: (context)=>const DateSheetScreen(),
  AssignScreen.routeName: (context)=>const AssignScreen(),
  ResultScreen.routeName: (context)=>const ResultScreen(),
  TimeTable.routeName: (context)=>const TimeTable(),
  };