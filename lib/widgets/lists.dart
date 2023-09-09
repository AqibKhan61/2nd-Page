import 'package:flutter/material.dart';
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
      height: _ksize.height * 0.10,
      width: double.infinity,
      decoration: BoxDecoration(
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
                  style: const TextStyle(
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Outfit",
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0),
                ),
                Row(
                  children: [
                    Text(text,
                        style: const TextStyle(
                            color: Color(0xff797979),
                            fontWeight: FontWeight.w300,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0)),
                    SizedBox(
                      width: _ksize.width * 0.21,
                    ),
                    Text(time,
                        style: const TextStyle(
                            color: Color(0xff797979),
                            fontWeight: FontWeight.w300,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0)),
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
