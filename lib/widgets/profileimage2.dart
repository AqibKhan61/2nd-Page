import 'package:flutter/material.dart';



class ProfileImage2 extends StatelessWidget{
  const ProfileImage2({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ksize.height*0.02),
            child: const Icon(Icons.person,size: 90.0,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}