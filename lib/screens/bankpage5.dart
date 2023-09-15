import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/widgets/dropdowm.dart';
import 'package:secondpage/screens/bankpage6.dart';
import 'package:secondpage/widgets/textfield2.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Bankpage5 extends StatelessWidget {
  const Bankpage5({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarr(title: 'Add Card',ontap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BankPage6()));
}),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/icash4.png'),
            SizedBox(
              height: ksize.height * 0.03,
            ),
            const TextField2(text: 'Name', lable: 'Your Name',obscure: false),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const TextField2(
                text: 'Enter your Card Number', lable: 'Card Number',obscure: false),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(right: ksize.width * 0.45),
              child: const Text(
                'Expired Date',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ksize.width * 0.16),
              child: Row(
                children: [
                  const DropDown(),
                  SizedBox(
                    width: ksize.width * 0.05,
                  ),
                  const DropDown(),
                ],
              ),
            ),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const TextField2(text: '******', lable: 'Password',obscure: true),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: ksize.width*0.40),
                  child: const Text('Phone Number'),
                ),
                SizedBox(
                  height: ksize.height*0.13,
                  width: ksize.width*0.68,
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                  ),
                )
              ],
            ),
            //SizedBox(height: ksize.height*0.01,),
            const Buttonn(text: 'Link Card',color: Color.fromARGB(186, 12, 27, 114),textcolor: Colors.white ),
          ],
        ),
      ),
    );
  }
}
