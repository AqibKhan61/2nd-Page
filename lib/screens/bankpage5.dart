import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/widgets/dropdowm.dart';
import 'package:secondpage/screens/bankpage6.dart';
import 'package:secondpage/widgets/textfield2.dart';

class Bankpage5 extends StatelessWidget {
  Bankpage5({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarr(title: 'Add Card'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: ksize.height * 0.12,
            //   width: double.infinity,
            //   color: const Color.fromARGB(186, 12, 27, 114),
            //   child: Padding(
            //     padding: EdgeInsets.only(
            //         top: ksize.height * 0.04,
            //         left: ksize.width * 0.03,
            //         right: ksize.width * 0.03),
            //     child: Row(
            //       children: [
            //         const Icon(
            //           Icons.menu,
            //           color: Colors.white,
            //           size: 35,
            //         ),
            //         SizedBox(
            //           width: ksize.width * 0.10,
            //         ),
            //         const Icon(Icons.arrow_back_ios,
            //             size: 30, color: Colors.white),
            //         SizedBox(
            //           width: ksize.width * 0.08,
            //         ),
            //         const Text(
            //           'Add Card',
            //           style: TextStyle(color: Colors.white, fontSize: 30),
            //         ),
            //         const Spacer(),
            //         const Icon(
            //           Icons.settings,
            //           color: Colors.white,
            //           size: 30,
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BankPage6()));
              },
              child: Image.asset('assets/images/icash4.png')),
            SizedBox(
              height: ksize.height * 0.03,
            ),
            const TextField2(text: 'Name', lable: 'Your Name'),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const TextField2(
                text: 'Enter your Card Number', lable: 'Card Number'),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: ksize.width * 0.13),
              child: const Row(
                children: [
                  Text(
                    'Expired Date',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ksize.width * 0.14),
              child: Row(
                children: [
                  const DropDown(),
                  SizedBox(
                    width: ksize.width * 0.12,
                  ),
                  const DropDown(),
                ],
              ),
            ),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const TextField2(text: '******', lable: 'Password'),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: ksize.width*0.45),
                  child: const Text('Phone Number'),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: ksize.width*0.14),
                  child: Row(
                    children: [
                      const DropDown(),
                      SizedBox(
                        width: ksize.width * 0.02,
                      ),
                      Container(
                        height: ksize.height * 0.05,
                        width: ksize.width * 0.40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff797979),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          //color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: ksize.height*0.03,),
            const Buttonn(text: 'Link Card'),
          ],
        ),
      ),
    );
  }
}
