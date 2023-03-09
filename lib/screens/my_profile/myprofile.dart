import 'package:flutter/material.dart';
import 'package:touch_clone/screens/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);
  static String routeName = 'MyProfile';
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.deepOrangeAccent])),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orangeAccent, Colors.deepOrange])),
            ),
            title: Center(
                child: Text(
              "My Profile",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            )),
            actions: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(right: kDefaultPadding / 2),
                  child: Row(
                    children: [
                      Icon(Icons.report_gmailerrorred_outlined),
                      SizedBox(width: 4),
                      Text(
                        "Report",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(kDefaultPadding * 2),
                      bottomLeft: Radius.circular(kDefaultPadding * 2),
                    ),
                    gradient: LinearGradient(colors: [
                      Colors.orangeAccent,
                      Colors.deepOrangeAccent
                    ])),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        maxRadius: 50,
                        minRadius: 50,
                        backgroundColor: Colors.deepOrange,
                        backgroundImage: AssetImage(
                            "assets/WhatsApp Image 2023-03-04 at 11.07.07 (1).jpeg"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ashwini Ahlawat",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(5.0, 5.0), blurRadius: 20.0)
                              ]),
                        ),
                        Text("B-Tech  Ch | Roll No.: 57",style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                      fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProfileDetails(
                      title: "Registration Number",
                      value: "11307834"),
                  ProfileDetails(
                      title: "Academic Year",
                      value: "2020-2024")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProfileDetails(
                      title: "Course                      ",
                      value: "B-Tech"),
                  ProfileDetails(
                      title: "Specialisation",
                      value: "Data-Science")
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProfileDetails(
                      title: "Admission Date        ",
                      value: "12/08/2020"),
                  ProfileDetails(
                      title: "Date Of Birth",
                      value: "22nd May 2002")
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/3,
                height: 10,
              ),
          ProfileDetailRow(tex: "E-mail",
              val: "ashuahlawat@gmail.com"),
              ProfileDetailRow(tex: "Father Name",
                  val: "Ashu ke Papa"),
              ProfileDetailRow(tex: "Phone No.",
                  val: "7889112549"),
            ],
          ),
        ));
  }

}
class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({Key? key, required this.tex, required this.val}) : super(key: key);
final String tex;
final String val;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(tex,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: kTextLightColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),),
                Text(val,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0,
                ),),
                kHalfSizedBox,
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.2,
                  child: Divider(
                    thickness: 2,
                    color: Colors.black12,
                  ),
                ),
              ]
          ),
          Icon(Icons.lock_outlined)
        ],
      ),

    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key, required this.title, required this.value}) : super(key: key);
final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: kDefaultPadding/4,left: kDefaultPadding/4,top: kDefaultPadding/2),

      width: MediaQuery.of(context).size.width/2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: kTextLightColor,
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),),
              Text(value,style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: kTextBlackColor,
                fontWeight: FontWeight.w600,
                fontSize: 17.0,
              ),),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width/3,
                child: Divider(
                  thickness: 2.0,
                ),
              )
            ],
          ),
          Icon(Icons.lock_outlined)
        ],
      ),
    );
  }
}

