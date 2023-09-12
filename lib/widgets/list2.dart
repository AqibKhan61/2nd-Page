import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  const List2(
      {super.key, required this.title, required this.text, required this.time});

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
              color: Colors.blue
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
                        style: const TextStyle(
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0),
                      ),
                      SizedBox(
                        width: _ksize.width * 0.12,
                      ),
                      Text(time,
                          style: const TextStyle(
                              color: Color(0xff797979),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Outfit",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0)),
                    ],
                  ),
                  Text(text,
                      style: const TextStyle(
                          color: Color(0xff797979),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Outfit",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0))
                ]),
          ],
        ),
      ),
    );
  }
}
