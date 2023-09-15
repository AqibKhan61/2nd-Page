import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/screens/bankpage8.dart';
import 'package:secondpage/widgets/dropdown2.dart';
import 'package:secondpage/widgets/textfield2.dart';

class BankPage7 extends StatelessWidget {
  const BankPage7({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarr(
          title: 'Transaction',
          ontap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BankPage8()));
          }),
      body: Padding(
        padding: EdgeInsets.only(left: ksize.width * 0.15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(
                right: ksize.width * 0.15,
                left: 0,
              ),
              child: Image.asset(
                'assets/images/transaction.png',
              ),
            ),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const TextField2(
                text: '00 123 456',
                lable: '   From bank Account',
                obscure: false),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const Text(
              '   Select the Bank',
            ),
            const DropDown2(),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const Text(
              '   Amount',
            ),
            const DropDown2(),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const Text('   Message'),
            SizedBox(
              width: ksize.width * 0.68,
              child: TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Hy, there you add your adress if its lengthy',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                ),
              ),
            ),
            SizedBox(
              height: ksize.height * 0.05,
            ),
            Row(
              children: [
                const Buttonn(
                    text: 'Send',
                    color: Color.fromARGB(186, 12, 27, 114),
                    textcolor: Colors.white),
                SizedBox(
                  width: ksize.width * 0.02,
                ),
                InkWell(onTap: () {}, child: const Text('Or')),
                SizedBox(
                  width: ksize.width * 0.02,
                ),
                const Buttonn(
                    text: 'Cancel',
                    color: Colors.white,
                    textcolor: Colors.black),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
