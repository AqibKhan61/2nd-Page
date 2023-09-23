import 'package:flutter/material.dart';
import 'package:secondpage/utils/apptextstyle.dart';


class SmallContainer extends StatelessWidget{
   SmallContainer({super.key, required this.color, required this.text});
  Color color;
  String text;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:color,
      ),
      child: Center(child: Text(text,style: AppTextStyle.textStyleMedium,)),
    );
  }
}