import 'package:flutter/material.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/utils/app_images.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/widgets/checkbox.dart';
import 'package:secondpage/screens/bankpage3.dart';
import 'package:secondpage/widgets/textfield.dart';
import 'package:secondpage/utils/apptextstyle.dart';

class BankPage2 extends StatelessWidget {
  const BankPage2({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ksize.height * 0.32,
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
                  padding: EdgeInsets.only(top: ksize.height * 0.07),
                  child: Column(
                    children: [
                      Image.asset(AppImages.homeimage2),
                      SizedBox(
                        height: ksize.height * 0.02,
                      ),
                       Text(
                        'Connect to your bank Account',
                        style: AppTextStyle.textStyleMedium.copyWith(color: Colors.white),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: ksize.height * 0.05,
            ),
            const TextFieldd(lable: 'Your Name', obscure: false),
            SizedBox(
              height: ksize.height * 0.02,
            ),
            const TextFieldd(lable: 'Bank Account', obscure: false),
            SizedBox(
              height: ksize.height * 0.02,
            ),
            const TextFieldd(lable: 'Email', obscure: false),
            SizedBox(
              height: ksize.height * 0.02,
            ),
            const TextFieldd(lable: 'Password', obscure: true),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: ksize.width * 0.15),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Use 6 Characters with the mix of Letters,',
                      style: AppTextStyle.textStyleMedium,
                    ),
                    const Text(
                      'numbers and symbols,',
                      style: AppTextStyle.textStyleMedium,
                    ),
                    SizedBox(height: ksize.height*0.01,),
                    Row(
                      children: [
                        const CheckboxWidget(),
                        SizedBox(
                          width: ksize.width * 0.01,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'By singing up you agree to Banks',
                              style: AppTextStyle.textStyleMedium,
                            ),
                            Text('term use And privacy policy',
                            style: AppTextStyle.textStyleMedium,
                            ),

                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            SizedBox(
              height: ksize.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Buttonn(
                  ontap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BankPage3()));
                  },
                    text: 'Sign Up',
                    color: AppColors.primaryColor,
                    textcolor:AppColors.white),
                SizedBox(width: ksize.width * 0.03),
                const Text('or'),
                SizedBox(width: ksize.width * 0.03),
                const Buttonn(
                  text: 'Cancel',
                  color: AppColors.white,
                  textcolor: AppColors.black,
                )
              ],
            ),
            SizedBox(
              height: ksize.height * 0.01,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text('Already Signed Up?'),
                 Text(
                  'Login',
                  style: AppTextStyle.linkTextstyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
