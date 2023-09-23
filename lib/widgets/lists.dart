import 'package:flutter/material.dart';
import 'package:secondpage/utils/apptextstyle.dart';
// ignore_for_file: no_leading_underscores_for_local_identifiers


class Listss extends StatelessWidget {
  const Listss(
      {super.key,
      required this.title,
      required this.image,
      required this.text,
      required this.time});

  final String image;
  final String title;
  final String text;
  final String time;
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Container(
      height: _ksize.height * 0.09,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 200, 224, 250).withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
          )
        ],
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.only(bottom: _ksize.height * 0.01),
      child: Padding(
        padding: EdgeInsets.only(left: _ksize.width * 0.04),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: _ksize.width * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyle.textStyleMedium,
                ),
                SizedBox(height: _ksize.height*0.01,),
                Row(
                  children: [
                    Text(text,
                        style: AppTextStyle.textStylesmall,),
                    SizedBox(
                      width: _ksize.width * 0.18,
                    ),
                    Text(time,
                        style: AppTextStyle.textStylesmall,),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
