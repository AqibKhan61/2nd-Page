import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore_for_file: no_leading_underscores_for_local_identifiers


class TwoBoxes extends StatelessWidget {
  const TwoBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: _ksize.height * 0.17,
          width: _ksize.width * 0.45,
          //width: _ksize.width*5,
          decoration: const BoxDecoration(
              //color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/images/group_1479.png'))),
          child: Padding(
            padding: EdgeInsets.only(top: _ksize.height * 0.02),
            child: Column(
              children: [
                SvgPicture.asset('assets/images/mask_group_18.svg',
                    fit: BoxFit.scaleDown),
                    SizedBox(height: _ksize.height*0.01,),
                Container(
                  height: _ksize.height * 0.05,
                  width: _ksize.width * 0.30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Send Now',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                      )),
                )
              ],
            ),
          ),
        ),
        const Spacer(),
        Container(
          height: _ksize.height * 0.17,
          width: _ksize.width * 0.45,
          //width: _ksize.width*5,
          decoration: const BoxDecoration(
              //color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/images/group_1480.png'))),
          child: Padding(
            padding: EdgeInsets.only(top: _ksize.height * 0.02),
            child: Column(
              children: [
                SvgPicture.asset('assets/images/mask_group_19.svg',
                    fit: BoxFit.scaleDown),
                    SizedBox(height: _ksize.height*0.01,),
               Container(
                  height: _ksize.height * 0.05,
                  width: _ksize.width * 0.30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Receive',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
