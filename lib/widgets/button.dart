import 'package:flutter/material.dart';
import 'package:secondpage/utils/app_colors.dart';

class Buttonn extends StatelessWidget {
  const Buttonn(
      {super.key,
      required this.text,
      required this.color,
      required this.textcolor,this.ontap,});

  final String text;
  final Color color;
  final Color textcolor;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: ksize.height * 0.05,
        width: ksize.width * 0.30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.Textfieldhint,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.w400,
                fontFamily: "Outfit",
                fontStyle: FontStyle.normal,
                fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}
