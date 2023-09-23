import 'package:flutter/material.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/utils/app_images.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/screens/bankpage2.dart';
import 'package:secondpage/widgets/textfield.dart';
import 'package:secondpage/utils/apptextstyle.dart';

class BankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ksize.height * 0.51,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                  Color.fromARGB(186, 12, 27, 114),
                  Color.fromARGB(184, 43, 60, 156),
                ])
              ),
              child: Padding(
                padding: EdgeInsets.only(top: ksize.height * 0.08),
                child: Column(
                  children: [
                     Text(
                      'WELCOME!',
                      style: AppTextStyle.textStyletitle.copyWith(fontSize: 28,color: Colors.white)
                    ),
                    SizedBox(height: ksize.height*0.03,),
                    SizedBox(
                      height: ksize.height*0.30,
                      child: Image.asset(AppImages.homeimage,color: Colors.white,)),
                  ],
                ),
              ),
            ),
            SizedBox(height: ksize.height*0.06,),
            const TextFieldd(lable: 'Username or email',obscure: false),
            SizedBox(height: ksize.height*0.03,),
            const TextFieldd(lable: 'Password',obscure: true),
            SizedBox(height: ksize.height*0.03,),
             Buttonn(text: 'Login',color: AppColors.primaryColor,textcolor: AppColors.white,ontap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BankPage2()));
            },),
            SizedBox(height: ksize.height*0.03,),
            const Text('Forgot Password?',style: AppTextStyle.linkTextstyle,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New To Bank Apps?', style: AppTextStyle.textStyleMedium),
                SizedBox(width: ksize.height*0.01,),
                const Text('Sign-Up',style: AppTextStyle.linkTextstyle),
              ],
            )
      
            
          ],
        ),
      ),
    );
  }
}
