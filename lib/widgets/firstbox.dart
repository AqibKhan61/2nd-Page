import 'package:flutter/material.dart';
import 'package:secondpage/widgets/progressbar.dart';

class FirstBox extends StatelessWidget {
  const FirstBox({super.key});
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Container(
      width: _ksize.width*0.500,
      height: _ksize.height*0.500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/mask_group_17.png'),
        ),
      ),
      child: const Row(
        children: [
          //ProgressBar(),
         //SizedBox(width: _ksize.width*0.01),
         Column(
          children: [
            //Text('Total internal Storage is 128Gb'),
          ],
         )
        ],
      ),
    );
  }
}
