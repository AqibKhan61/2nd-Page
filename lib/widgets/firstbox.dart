import 'package:flutter/material.dart';
import 'package:secondpage/screens/gridscreen.dart';
import  'package:secondpage/widgets/dotContainer.dart';
import 'package:circle_progress_bar/circle_progress_bar.dart';


// ignore_for_file: no_leading_underscores_for_local_identifiers

class FirstBox extends StatelessWidget {
  const FirstBox({super.key});
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: _ksize.height * 0.25,
      decoration:  BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/mask_group_17.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding:  EdgeInsets.only(top: _ksize.height*0.06,right: _ksize.width*0.02, left: _ksize.width*0.06),
        child: Row(
          children: [
           Container(
            padding: EdgeInsets.only(bottom: _ksize.height*0.08),
             child: const SizedBox(
                     width: 75,
                     child: CircleProgressBar(
              foregroundColor: Color(0xff273dce),
              backgroundColor: Color.fromARGB(255, 79, 189, 233),
              value: 0.8,
              child: Center(child: Text('30%'))
                     ),
                   ),
           ),
            SizedBox(width: _ksize.width * 0.04),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total internal Storage is 128Gb',
                  style: TextStyle(
                      color: Color(0xff273dce),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Outfit",
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0),
                ),
                Row(
                  children: [
                    const DotCon(),
                    SizedBox(
                      width: _ksize.width * 0.03,
                    ),
                    const Text(
                      'Storage Used 95MB',
                      style: TextStyle(
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Outfit",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const DotCon(),
                    SizedBox(
                      width: _ksize.width * 0.03,
                    ),
                    const Text(
                      'Free Storage 35MB',
                      style: TextStyle(
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Outfit",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: _ksize.height * 0.02,
                ),
                //ElevatedButton(onPressed: () {}, child: const Text('Clean Now'))
                GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),),);
              },
              child: Container(
                  height: _ksize.height * 0.05,
                  width: _ksize.width * 0.30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Clean Now',
                      style:TextStyle(
                          color: Color(0xff2190f4),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Outfit",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                    ),
                  )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
