import 'package:flutter/material.dart';
import 'package:touch_clone/screens/colors.dart';

class Defaultbutton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const Defaultbutton({super.key, required this.onPress, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 160,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.deepOrange,
            ],
            begin: const FractionalOffset(0.0, 0.8),
            end: const FractionalOffset(0.5, 0.8),
            stops: [0.3, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius:
          BorderRadius.circular(kDefaultPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Sign in")),
            SizedBox(height: 5,),
            Icon(Icons.arrow_right),
          ],
        ),

      ),
    );
  }
}
