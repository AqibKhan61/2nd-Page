import 'package:flutter/material.dart';
import 'package:secondpage/utils/apptextstyle.dart';

class List2 extends StatelessWidget {
  const List2(
      {super.key, required this.title, required this.text, required this.time,required this.color});

  final String title;
  final String text;
  final String time;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Container(
      height: _ksize.height * 0.10,
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.only(bottom: _ksize.height * 0.01),
      child: Padding(
        padding: EdgeInsets.only(
          left: _ksize.width * 0.06,
          right: _ksize.width * 0.06,
        ),
        child: Row(
          children: [
            Container(
              height: _ksize.height * 0.05,
              width: _ksize.width * 0.09,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              color: color,
              ),
            ),
            SizedBox(width: _ksize.width * 0.03),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.textStyleMedium,
                      ),
                      SizedBox(width: _ksize.width*0.09,),
                      Text(time,
                          style: AppTextStyle.textStylesmall),
                    ],
                  ),
                  Text(text,
                      style: AppTextStyle.textStylesmall)
                ]),
          ],
        ),
      ),
    );
  }
}
