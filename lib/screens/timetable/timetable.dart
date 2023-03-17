import 'package:flutter/material.dart';
import 'package:touch_clone/screens/colors.dart';
class TimeTable extends StatelessWidget {
  const TimeTable({Key? key}) : super(key: key);
static String routeName = 'TimeTable';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.deepOrange
                ]
              )
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 63.0),
            child: Text("Time Table",style: Theme.of(context).textTheme.titleMedium,),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            physics: BouncingScrollPhysics(),
            
            tabs: [
              Tab(text: 'Monday',),
              Tab(text: 'Tuesday',),
              Tab(text: 'Wednesday',),
              Tab(text: 'Thursday',),
              Tab(text: 'Friday',),
              Tab(text: 'Saturday',),


            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
          buildPage('9AM-10AM','10AM-11AM'),
            buildPage('10AM-11AM','11AM-12PM'),
            buildPage('9AM-11AM','10AM-12AM'),
            buildPage('1PM-2PM','9AM-10AM'),
            buildPage('9AM-10AM','10AM-12PM'),
            buildPage('11AM-1PM','4PM-5PM'),
    ]
        ),
      ),
    );

  }
  Widget buildPage(String text1,String text2)=> Column(

    children: [
      SizedBox(
        height: 10,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          HomeCard(onPress: (){},
              title: text1,
          subject: "CAP-485",),

          HomeCard(
              onPress: (){},
              title: text2,
          subject: "CAP-441",)
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 25),
        child: Row(
          children: [

            HomeCard(onPress: (){},
              title: text1,
              subject: "CAP-485",),


          ],
        ),
      ),
    ],
  );
}
class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.onPress, required this.title,required this.subject}) : super(key: key);
  final VoidCallback onPress;
  final String title;
  final String subject;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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

             Padding(
               padding: const EdgeInsets.only(bottom: 28.0),
               child: Text(title,textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                  ),
                ),
             ),

            Text(subject,textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white70,
                  fontWeight: FontWeight.w900,
                  fontSize: 23
              ),
            ),
          ],
        ),
      ),
    );
  }
}

