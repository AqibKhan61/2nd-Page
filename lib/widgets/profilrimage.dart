import 'package:flutter/material.dart';


class ProfileImage extends StatelessWidget{
  const ProfileImage({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ksize.height*0.01),
            child: const Icon(Icons.person,size: 75.0,color:  Color.fromARGB(186, 12, 27, 114),),
          ),
        ],
      ),
    );
  }
}