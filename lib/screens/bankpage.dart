import 'package:flutter/material.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/screens/bankpage2.dart';
import 'package:secondpage/widgets/textfield.dart';

class BankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ksize.height * 0.55,
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
                    const Text(
                      'WELCOME!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: ksize.height*0.04,),
                    Image.asset('assets/images/home.png',color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: ksize.height*0.06,),
            const TextFieldd(lable: 'Username or email',obscure: false),
            SizedBox(height: ksize.height*0.03,),
            const TextFieldd(lable: 'Password',obscure: true),
            SizedBox(height: ksize.height*0.03,),
            const Buttonn(text: 'Login',color: Color.fromARGB(186, 12, 27, 114),textcolor: Colors.white),
            SizedBox(height: ksize.height*0.03,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BankPage2()));
              },
              child: const Text('Forgot Password?',style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.solid,
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New To Bank Apps?', style: TextStyle(fontSize: 16,color: Color(0xff797979)),),
                SizedBox(width: ksize.height*0.01,),
                GestureDetector(
              onTap: (){},
              child: const Text('Sign-Up',style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.solid,
              ),),
            ),
              ],
            )
      
            
          ],
        ),
      ),
    );
  }
}
