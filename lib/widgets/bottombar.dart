import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore_for_file: no_leading_underscores_for_local_identifiers


class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Container(
      height: _ksize.height * 0.10,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
            left: _ksize.width * 0.04, right: _ksize.width * 0.04),
        child: Row(
          children: [
            Container(
              height: _ksize.height * 0.06,
              width: _ksize.width * 0.30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: EdgeInsets.only(left: _ksize.width * 0.02),
                child: Row(
                  children: [
                    const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: _ksize.width * 0.02,
                    ),
                    const Text('Home',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0)),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: _ksize.width * 0.185,
            ),
            SvgPicture.asset('assets/images/mask_group_25.svg'),
             SizedBox(
              width: _ksize.width * 0.220,
            ),
            SvgPicture.asset('assets/images/mask_group_26.svg'),
          ],
        ),
      ),
    );
  }
}
