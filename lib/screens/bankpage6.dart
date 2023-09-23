import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/utils/app_images.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/screens/bankpage7.dart';
import 'package:secondpage/utils/apptextstyle.dart';

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
                   AppColors.primaryColor,
                  Color.fromARGB(184, 43, 60, 156),
                ])),
            child: Padding(
              padding: EdgeInsets.only(top: ksize.height * 0.03),
              child: Column(
                children: [
                   Text(
                    'Scan This QR Code',
                    style: AppTextStyle.textStyleMedium.copyWith(color: AppColors.white,fontSize: 18)
                  ),
                  SizedBox(
                    height: ksize.height * 0.02,
                  ),
                  Image.asset(AppImages.qrcodeImage),
                  SizedBox(
                    height: ksize.height * 0.03,
                  ),
                   Text('Your Name',
                      style: AppTextStyle.textStyletitle.copyWith(color: AppColors.white),),
                   Text('your-email@gmail.com',
                      style: AppTextStyle.textStylesmall.copyWith(color: AppColors.white))
                ],
              ),
            ),
          ),
          SizedBox(
            height: ksize.height * 0.05,
          ),
           Text(
            'Try Barcode',
            style: AppTextStyle.textStylesmall.copyWith(fontSize: 18)
          ),
          SizedBox(
            height: ksize.height * 0.01,
          ),
          SizedBox(
              height: 90,
              width: 400,
              child: Image.asset(AppImages.barcodeImage)),
          SizedBox(
            height: ksize.height * 0.05,
          ),
          const Text(
            'Cant Scan the QR code?',
            style: AppTextStyle.textStyleMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Try',
                style: AppTextStyle.textStyleMedium,
              ),
              SizedBox(
                width: ksize.width * 0.01,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const BankPage7())));
                },
                child: const  Text(
                  'Bank Account',
                  style: AppTextStyle.linkTextstyle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
