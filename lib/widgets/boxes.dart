import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';


class Box extends StatelessWidget {
  Box({super.key, required this.text, required this.image});

  String text;
  var image;
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(
              top: _ksize.height * 0.01,
              bottom: _ksize.height * 0.01,
              left: _ksize.width * 0.02,
              right: _ksize.width * 0.02),
          // margin: EdgeInsets.only(bottom: _ksize.height*0.01),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xff797979)),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             SvgPicture.asset(image,fit: BoxFit.scaleDown, color: Colors.black,),
              SizedBox(
                width: _ksize.width * 0.01,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Color(0xff797979),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Outfit",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}