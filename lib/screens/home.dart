import 'package:flutter/material.dart';
import 'package:secondpage/widgets/firstBox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _ksize.height,
        width: _ksize.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/mask_group_12.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: _ksize.height * 0.06,
            left: _ksize.width * 0.04,
            right: _ksize.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to',
                style: TextStyle(
                    color: Color(0xff797979),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Outfit",
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0),
              ),
              Row(
                children: [
                  const Text(
                    'Media Transfer App',
                    style: TextStyle(
                        color: Color(0xff212121),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Outfit",
                        fontStyle: FontStyle.normal,
                        fontSize: 17.0),
                  ),
                  const Spacer(),
                  Image.asset('assets/images/group_1328.png'),
                ],
              ),
              SizedBox(height: _ksize.height*0.02,),
              const FirstBox(),
            ],
          ),
        ),
      ),
    );
  }
}
