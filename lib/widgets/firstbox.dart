import 'package:flutter/material.dart';
import 'package:secondpage/widgets/progressbar.dart';

class FirstBox extends StatelessWidget {
  const FirstBox({super.key});
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Container(
      height: _ksize.height * 0.300
      ,
      width: _ksize.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/mask_group_17.png'),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: _ksize.width*0.08,right: _ksize.width*0.08),
        child: Row(
          children: [
            ProgressBar(),
           //SizedBox(width: _ksize.width*,)
          ],
        ),
      ),
    );
  }
}
