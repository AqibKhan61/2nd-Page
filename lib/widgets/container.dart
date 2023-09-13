import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable






class Containerr extends StatelessWidget{
   Containerr({super.key,required this.color, required this.text});
   Color color;
   String text;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Container(
      height: ksize.height*0.06,
      width: ksize.width*0.40,
     
      decoration: BoxDecoration(
         color: color,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15)),
      ),
      child: Center(child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),)),
    );
  }
}