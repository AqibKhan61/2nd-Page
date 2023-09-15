import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/screens/bankpage5.dart';
import 'package:secondpage/widgets/textfield2.dart';
import 'package:secondpage/widgets/profileimage2.dart';

class BankPage4 extends StatelessWidget {
  const BankPage4({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarr(title: 'Account',ontap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Bankpage5()));}),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: ksize.height*0.03,left: ksize.width*0.15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: ksize.width*0.20),
                child: const ProfileImage2(),
              ),
              SizedBox(
                height: ksize.height * 0.03,
              ),
              const TextField2(
                text: 'Aqib-khan',
                lable: 'Your Name',
                obscure: false,
              ),
              SizedBox(
                height: ksize.height * 0.01,
              ),
              const TextField2(
                text: '347 025 145',
                lable: 'Bank Account',
                obscure: false,
              ),
              SizedBox(
                height: ksize.height * 0.01,
              ),
              const TextField2(
                text: 'aqibk55500@gmail.com',
                lable: 'Your Email',
                obscure: false,
              ),
              SizedBox(
                height: ksize.height * 0.01,
              ),
              const TextField2(
                text: '**********',
                lable: 'Password',
                obscure: true,
              ),
              SizedBox(
                height: ksize.height * 0.01,
              ),
              const TextField2(
                text: '+92 3659874155',
                lable: 'Phone No',
                obscure: false,
              ),
              SizedBox(
                height: ksize.height * 0.01,
              ),
              const Text('Your Address',),
              SizedBox(
                width: ksize.width*0.68,
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
              SizedBox(height: ksize.height*0.02,),
              Padding(
                padding: EdgeInsets.only(left: ksize.width*0.20),
                child: const Buttonn(text: 'Save Changes',color: Color.fromARGB(186, 12, 27, 114),textcolor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
