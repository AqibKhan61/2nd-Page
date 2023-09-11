import 'package:flutter/material.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/widgets/checkbox.dart';
import 'package:secondpage/screens/bankpage3.dart';
import 'package:secondpage/widgets/textfield.dart';


class BankPage2 extends StatelessWidget{
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
              color: const Color.fromARGB(186, 12, 27, 114),
              child: Padding(
                padding: EdgeInsets.only(top: ksize.height * 0.07),
                child:Column(
                  children: [
                    Image.asset('assets/images/images.png'),
                    SizedBox(height: ksize.height*0.02,),
                    const Text('Connect to your bank Account',style: TextStyle(color: Colors.white),),
                  ],
                )
          ),
          ),
          SizedBox(height: ksize.height*0.05,),
          const TextFieldd(lable: 'Your Name'),
          SizedBox(height: ksize.height*0.02,),
          const TextFieldd(lable: 'Bank Account'),
          SizedBox(height: ksize.height*0.02,),
          const TextFieldd(lable: 'Email'),
          SizedBox(height: ksize.height*0.02,),
          const TextFieldd(lable: 'Password'),
          SizedBox(height: ksize.height*0.01,),
          const Text('Use 6 Characters with the mix of Letters,',textAlign: TextAlign.center,),
          const Text('numbers and symbols,',textAlign: TextAlign.start,),
          SizedBox(height: ksize.height*0.01,),
          Padding(
            padding: EdgeInsets.only(left: ksize.width*0.09,right: ksize.width*0.10),
            child: const Row(
              children: [
                CheckboxWidget(),
                Column(
                  children: [
                    Text('By singing up you agree to Banks',textAlign: TextAlign.center,),
                    Text('term use And privacy policy'),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: ksize.height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Buttonn(text: 'Sign Up'),
              SizedBox(width: ksize.width*0.02),
              const Text('or'),
              SizedBox(width: ksize.width*0.02),
              const Buttonn(text: 'Cancel')
            ],
          ),
          SizedBox(height: ksize.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already Signed Up?'),
              InkWell(
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BankPage3()));
                },
                child: const Text('Login',style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),),
              )
            ],
          )
          ],
          ),
      ),
        );            
  }
}