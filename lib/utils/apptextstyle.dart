import 'package:flutter/material.dart';
import 'package:secondpage/utils/app_colors.dart';

class AppTextStyle {
  static const TextStyle textStyletitle = TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Outfit",
      fontStyle: FontStyle.normal,
      fontSize: 17.0);
  static const TextStyle textStyleMedium = TextStyle(
      color: Color(0xff212121),
      fontWeight: FontWeight.w400,
      fontFamily: "Outfit",
      fontStyle: FontStyle.normal,
      fontSize: 15.0);

  static const TextStyle linkTextstyle = TextStyle(
    color: AppColors.linkColor,
    fontSize: 16,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.linkColor,
    decorationStyle: TextDecorationStyle.solid,
  );

  static const TextStyle textStylesmall = TextStyle(
      color: Color(0xff797979),
      fontWeight: FontWeight.w300,
      fontFamily: "Outfit",
      fontStyle: FontStyle.normal,
      fontSize: 13.0,
      );

   static const TextStyle appbarTextstyle = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontFamily: "Outfit",
      fontStyle: FontStyle.normal,
      fontSize: 28.0,
      );
}
