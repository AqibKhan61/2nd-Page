import 'package:flutter/material.dart';

class PictureContainer extends StatelessWidget {
  PictureContainer({super.key, required this.imege});
  final String imege;
  
  @override
  Widget build(BuildContext context) {
    var ksize = MediaQuery.of(context).size;
    return Container(
      height: ksize.height * 0.09,
      width: ksize.width * 0.10,
      decoration: BoxDecoration(
       
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image(image: AssetImage(imege),
      fit: BoxFit.cover,
      )
    );
  }
}


