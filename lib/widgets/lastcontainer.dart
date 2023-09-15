import 'package:flutter/material.dart';

class LastContainer extends StatelessWidget {
  LastContainer({super.key, required this.color, required this.icon, required this.txt});

  Color color;
  IconData  icon;
  String txt;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: ksize.height * 0.09,
          width: ksize.width * 0.18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 45,
              ),
            ],
          ),
        ),
        SizedBox(height: ksize.height*0.01,),
        Text(txt),
      ],
    );
  }
}
