import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore_for_file: no_leading_underscores_for_local_identifiers

class TwoBoxes extends StatelessWidget {
  const TwoBoxes({super.key, required this.bgimage, required this.svg, required this.buttonText});

  final String bgimage;
  final String svg;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size; 
    return Container(
      height: _ksize.height * 0.19,
      width: _ksize.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(bgimage),
            fit: BoxFit.cover,
          ),
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svg,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: _ksize.height * 0.01,
          ),
          GestureDetector(
              onTap: () {},
              child: Container(
                  height: _ksize.height * 0.05,
                  width: _ksize.width * 0.30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                          //color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Outfit",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                    ),
                  )))
        ],
      ),
    );
  }
}
