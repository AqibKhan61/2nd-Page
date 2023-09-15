import 'package:flutter/material.dart';

class Buttonn extends StatelessWidget {
  const Buttonn(
      {super.key,
      required this.text,
      required this.color,
      required this.textcolor});

  final String text;
  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: ksize.height * 0.05,
        width: ksize.width * 0.30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xff797979),
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
