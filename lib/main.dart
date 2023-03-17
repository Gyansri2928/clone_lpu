import 'package:flutter/material.dart';
import 'package:touch_clone/routes.dart';
//import 'package:touch_clone/screens/Datesheet/Datesheet.dart';
import 'package:touch_clone/screens/splash.dart';
//import 'package:touch_clone/screens/FeeScreen/feescreen.dart';
//import 'package:touch_clone/screens/colors.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:touch_clone/screens/splash.dart';
import 'package:touch_clone/theme.dart';
import 'package:sizer/sizer.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //it requires 3 parameters
    //context, orientation, device
    //it always requires, see plugin documentation
    return Sizer(builder: (context, orientation, device){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lpu Touch Clone',
        theme: CustomTheme().baseTheme,
        //initial route is splash screen
        //mean first screen
        initialRoute: SplashScreen.routeName,
        //define the routes file here in order to access the routes any where all over the app
        routes: routes,

      );

    });
  }
}
