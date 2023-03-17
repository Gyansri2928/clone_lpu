import 'package:flutter/material.dart';
import 'package:touch_clone/screens/Results/result_data/result_components.dart';
import 'package:touch_clone/screens/Results/result_data/result_data.dart';
import 'package:sizer/sizer.dart';
import 'package:touch_clone/screens/colors.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);
static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.orangeAccent,
              Colors.deepOrange
            ]),
      ),
      child: Scaffold(
            appBar: AppBar(

              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orangeAccent,
                      Colors.deepOrange
                    ]
                  )
                ),
              ),
              title: Text("Result",style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 25
              ),),
            ),
          backgroundColor: Colors.transparent,
          body:Column(
            children: [
              sizedBox,
              Container(
                child:Container(
                width: MediaQuery.of(context).size.width,
                height: 210,
                margin: const EdgeInsets.all(8),
                child: CustomPaint(
                  foregroundPainter: CircularPainter(
                    backgroundColor: Colors.transparent,
                    limeColor: kOtherColor,
                    width: 5.w
                  ),
                  child: Center(
                    child: Text('289\n\t    / \n\t    400',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),)
                  ),
                ),

              ),),
               sizedBox,
               Text("You are excellent",style: Theme.of(context).textTheme.titleSmall!.copyWith(
                 fontWeight: FontWeight.w900
               ),),
              Text("Ashu!!",style: Theme.of(context).textTheme.titleMedium!.copyWith(

              ),),
               sizedBox,
               
               Expanded(
                 child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      )
                    ),
                   child: ListView.builder(
                     padding: const EdgeInsets.all(kDefaultPadding/1.3),
                     itemCount: result.length,

                       itemBuilder: (context, index){
                         return Container(
                           margin: EdgeInsets.only(bottom: kDefaultPadding),
                            padding: EdgeInsets.all(kDefaultPadding/2),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.deepOrange
                                ]
                              ),
                              borderRadius: BorderRadius.circular(kDefaultPadding),
                              boxShadow: const[
                                BoxShadow(
                                  blurRadius: 2.0,
                                  color: Colors.white60
                                )
                              ]
                            ),
                           child: Column(

                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('${result[index].subjectName}: ',
                                   textAlign: TextAlign.start,
                                   style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                     fontWeight: FontWeight.w800,
                                     fontSize: 19
                                   ),),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.end,
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text(
                                           '${result[index].obtainedMarks} / ${result[index].Totalmarks}',
                                       style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                         fontWeight:FontWeight.w800
                                       ),
                                       ),
                                       Stack(
                                         children: [
                                           Container(
                                             width: result[index].Totalmarks.toDouble(),
                                             height: 2.h,
                                             decoration: BoxDecoration(
                                               color: Colors.grey[700],
                                                   borderRadius: const BorderRadius.only(
                                                     topLeft: Radius.circular(kDefaultPadding),
                                                     bottomRight: Radius.circular(kDefaultPadding)
                                                   )
                                             ),
                                           ),
                                           Container(
                                             height: 2.h,
                                             width: result[index].obtainedMarks.toDouble(),
                                             decoration: BoxDecoration(
                                               color: result[index].grade == 'C'? Colors.red:Colors.white,
                                               borderRadius: const BorderRadius.only(
                                                 topLeft: Radius.circular(kDefaultPadding),
                                                 bottomRight: Radius.circular(kDefaultPadding),
                                               )
                                             ),
                                           )
                                         ],
                                       ),
                                       Text(result[index].grade,
                                       textAlign: TextAlign.start,
                                       style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                         fontWeight: FontWeight.w900,

                                       ),)
                                     ],
                                   )
                                 ],
                               )
                             ],
                           ),
                         );
                       }),
                  ),
               ),
            ],
          )
      ),
    );
  }
}
