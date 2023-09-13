import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/widgets/profilrimage.dart';

class BankPage9 extends StatelessWidget {
  const BankPage9({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBarr(title: 'Payment'),
        body: Container(
          height: ksize.height * 0.25,
          width: double.infinity,
          color: const Color.fromARGB(186, 12, 27, 114),
          child: Padding(
            padding:  EdgeInsets.only(left: ksize.width*0.08),
            child: Row(
              children: [
                const ProfileImage(),
                SizedBox(width: ksize.width*0.03,),
                Padding(
                  padding: EdgeInsets.only(top: ksize.height*0.07),
                  child:const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BALANCE',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        '\$4,180.20',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
