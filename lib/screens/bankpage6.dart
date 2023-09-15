import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/screens/bankpage7.dart';

class BankPage6 extends StatelessWidget {
  const BankPage6({super.key});

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarr(title: 'Transaction',ontap: (){}),
      body: Column(
        children: [
          Container(
            height: ksize.height * 0.50,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(186, 12, 27, 114),
                  Color.fromARGB(184, 43, 60, 156),
                ])),
            child: Padding(
              padding: EdgeInsets.only(top: ksize.height * 0.03),
              child: Column(
                children: [
                  const Text(
                    'Scan This QR Code',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: ksize.height * 0.02,
                  ),
                  Image.asset('assets/images/qrcode.png'),
                  SizedBox(
                    height: ksize.height * 0.03,
                  ),
                  const Text('Your Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const Text('your-email@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: ksize.height * 0.05,
          ),
          const Text(
            'Try Barcode',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff797979),
            ),
          ),
          SizedBox(
            height: ksize.height * 0.01,
          ),
          SizedBox(
              height: 90,
              width: 400,
              child: Image.asset('assets/images/barcode.png')),
          SizedBox(
            height: ksize.height * 0.05,
          ),
          const Text(
            'Cant Scan the QR code?',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Try',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                width: ksize.width * 0.01,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const BankPage7())));
                },
                child: Padding(
                  padding:  EdgeInsets.only(top: ksize.height*0.01),
                  child: const  Text(
                    'Bank Account',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.blue,
                          offset: Offset(0, -5),
                        )
                      ],
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 1,
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
