import 'package:flutter/material.dart';
import 'package:touch_clone/screens/Assignments/assignments.dart';
import 'package:touch_clone/screens/Datesheet/Datesheet.dart';
import 'package:touch_clone/screens/FeeScreen/feescreen.dart';
import 'package:touch_clone/screens/Results/Results.dart';
//import 'package:touch_clone/screens/colors.dart';
import 'package:touch_clone/screens/my_profile/myprofile.dart';
import 'package:touch_clone/screens/timetable/timetable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawerWidget extends StatelessWidget {

final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orangeAccent,
              Colors.deepOrangeAccent
            ]
          )
        ),

        child: ListView(
          children: <Widget>[

        Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [
                  Colors.orangeAccent,
                  Colors.deepOrange
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
            )
        ),
        child:const CircleAvatar(
              radius: 56,
              backgroundColor: Colors.transparent,
              backgroundImage:
              NetworkImage(""),
            ),
        ),
            SizedBox(
              height: 15,
            ),


            const SizedBox(
              height: 30,
            ),

            buildMenuItem(
              text: "Profile",
              icon: Icons.people,
              onPress: (){
                Navigator.pushNamed(context, MyProfile.routeName);
              }
            ),
            const SizedBox(
              height: 16,
               child: Divider(
                height: 20,
            ),
            ),
            buildMenuItem(
                text: "Time Table",
                icon: Icons.calendar_today_outlined,
                onPress: (){
                  Navigator.pushNamed(context, TimeTable.routeName);
                }
            ),
            const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Assignment",
                icon: Icons.panorama_photosphere_rounded,
                onPress: (){
                  Navigator.pushNamed(context, AssignScreen.routeName);
                }
            ),
            const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Datesheet",
                icon: Icons.date_range_sharp,
                onPress: (){
                  Navigator.pushNamed(context, DateSheetScreen.routeName);
                }
            ),
            const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Result",
                icon: Icons.paste_outlined,
                onPress: (){
                  Navigator.pushNamed(context, ResultScreen.routeName);
                }
            ),
            const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Fee",
                icon: Icons.currency_rupee,
                onPress: (){
                  Navigator.pushNamed(context, FeeScreen.routename);
                }
            ),
            const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Teacher On Leave",
                icon: Icons.list_alt_outlined,
                onPress: (){
                  Navigator.pushNamed(context, ResultScreen.routeName);
                }
            ),const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Uni Hospital Helpline",
                icon: FontAwesomeIcons.headset,
                onPress: (){
                  Navigator.pushNamed(context, ResultScreen.routeName);
                }
            ),const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Doctor Appointment",
                icon: FontAwesomeIcons.userDoctor,
                onPress: (){
                  Navigator.pushNamed(context, ResultScreen.routeName);
                }
            ),const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "MakeUp Adjustments",
                icon: FontAwesomeIcons.addressBook,
                onPress: (){
                  Navigator.pushNamed(context, ResultScreen.routeName);
                }
            ),const SizedBox(
              height: 16,child: Divider(
              height: 20,
            ),
            ),
            buildMenuItem(
                text: "Electives Polling",
                icon: FontAwesomeIcons.ribbon,
                onPress: (){
                  Navigator.pushNamed(context, ResultScreen.routeName);
                }
            ),




          ],
        ),
      ),

    );
  }
}
Widget buildMenuItem({
  required String text,
  required IconData icon,
  required VoidCallback onPress,
}){

  return ListTile(
    leading: Icon(icon,color: Colors.white),
    title: Text(text,style: const TextStyle(color: Colors.white70,fontSize: 23),),

    onTap: onPress
  );
}
