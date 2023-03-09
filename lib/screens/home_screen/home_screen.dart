import 'package:flutter/material.dart';
import 'package:touch_clone/screens/Datesheet/Datesheet.dart';
import 'package:touch_clone/screens/Fee%20Screen/feescreen.dart';
import 'package:touch_clone/screens/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:touch_clone/screens/home_screen/widget/student_data.dart';
import 'package:touch_clone/screens/my_profile/myprofile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orangeAccent,
            Colors.deepOrangeAccent
          ],
          stops: [0.0, 1.0],
        )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,

        appBar: AppBar(
          backgroundColor: kOtherColor,
          leading: IconButton(
            icon: const Icon(Icons.menu_rounded,
              color: Colors.orangeAccent,),
            onPressed: (){},
          ),
          title: const Padding(
            padding: EdgeInsets.only(left:65),
            child: Text("Dashboard",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.notification_add_outlined,color:Colors.black))
          ],
        ),
        body:
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                             StudentName(studentName: "Ashwini"),
                               SizedBox(
                                height: kDefaultPadding/2,
                              ),
                               StudentInfo(studentInfo: "B-Tech  Ch | Roll No.: 57")
                                ,
                               SizedBox(
                                height: kDefaultPadding/2,
                              ),
                              StudentYear(studentYear: "2020-2024")
                            ],
                          ),
                          const SizedBox(
                            height: kDefaultPadding/6,
                          ),

                          StudentPic(picAddress: 'assets/WhatsApp Image 2023-03-04 at 11.07.07 (1).jpeg', onPress: (){
                            Navigator.pushNamed(context, MyProfile.routeName);
                          })
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          StudentDatacard(
                              title: "Attendance",
                              value: "90.09%",
                              onPress: (){}),
                          StudentDatacard(
                              title: "Fees Due",
                              value: "6000",
                              onPress: (){
                                Navigator.pushNamed(context, FeeScreen.routeName);
                              }),


                        ],
                      )

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(

                      color: kOtherColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding*1.3),
                        topRight: Radius.circular(kDefaultPadding*1.3),
                      )
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            HomeCard(
                                onPress: (){},
                                icon: 'assets/icons/img_3.png',
                                title: 'Ask',
                            ),
                            HomeCard(
                              onPress: (){},
                              icon: 'assets/icons/img_4.png',
                              title: '  Take Quiz',
                            ),


                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            HomeCard(
                              onPress: (){},
                              icon: 'assets/icons/img_5.png',
                              title: 'Holidays',
                            ),
                            HomeCard(
                              onPress: (){},
                              icon: 'assets/icons/img_6.png',
                              title: '   Time Table',
                            ),


                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            HomeCard(
                              onPress: (){},
                              icon: 'assets/icons/img_7.png',
                              title: 'Result',
                            ),
                            HomeCard(
                              onPress: (){
                                Navigator.pushNamed(context, DateSheetScreen.routeName);
                              },
                              icon: 'assets/icons/img_8.png',
                              title: 'DateSheet',
                            ),


                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.onPress, required this.icon, required this.title}) : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding/2),
        width:MediaQuery.of(context).size.width/2.5,
        height: MediaQuery.of(context).size.height/6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.orangeAccent,
                Colors.deepOrangeAccent,
              ]
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding/2),


        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(icon,color: kOtherColor,height: 75,
              width: 90,

            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Text(title,textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                ),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding/3,
            )
          ],
        ),
      ),
    );
  }
}

