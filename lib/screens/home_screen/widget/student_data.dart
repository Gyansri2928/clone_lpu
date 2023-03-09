import 'package:flutter/material.dart';
import 'package:touch_clone/screens/colors.dart';

class StudentName extends StatelessWidget {
  const StudentName({Key? key, required this.studentName}) : super(key: key);
  final String studentName;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [

        Text("Hi",style: Theme.of(context).textTheme.bodyLarge!.copyWith(

            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),),

        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(studentName,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),

      ],
    );
  }
}
class StudentInfo extends StatelessWidget {
  const StudentInfo({Key? key, required this.studentInfo}) : super(key: key);
  final String studentInfo;

  @override
  Widget build(BuildContext context) {
    return Text(
        studentInfo,
        style:Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(
        fontSize: 14,
        color: Colors.white
    ));
  }
}
class StudentYear extends StatelessWidget {
  const StudentYear({Key? key, required this.studentYear}) : super(key: key);
final String studentYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 25,
      decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding)
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 17.0,top: 5),
        child: Text(
          studentYear,
          style: TextStyle(
          fontSize: 12,
          color: kTextBlackColor,
          fontWeight: FontWeight.bold,

        ),),
      ),
    );
  }
}
class StudentPic extends StatelessWidget {
  const StudentPic({Key? key, required this.picAddress, required this.onPress}) : super(key: key);
  final String picAddress;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50,
        maxRadius: 55,
        backgroundColor: Colors.white60,
        backgroundImage:
        AssetImage(picAddress),
      ),
    );
  }
}
class StudentDatacard extends StatelessWidget {
  const StudentDatacard({Key? key, required this.title, required this.value, required this.onPress}) : super(key: key);
final String title;
final String value;
final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //jump to attendance screen
      },
      child: Container(
        width: MediaQuery.of(context).size.width/2.5,
        height: MediaQuery.of(context).size.height/7,
        decoration: BoxDecoration(
            color: kOtherColor,
            borderRadius: BorderRadius.circular(kDefaultPadding)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            ),


            Text(value,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w300
            ),
            ),

          ],
        ),
      ),
    );
  }
}




