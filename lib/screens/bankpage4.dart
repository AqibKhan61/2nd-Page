import 'package:flutter/material.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/screens/bankpage5.dart';
import 'package:secondpage/widgets/textfield2.dart';
import 'package:secondpage/widgets/profilrimage.dart';
import 'package:secondpage/widgets/profileimage2.dart';

class BankPage4 extends StatelessWidget {
  const BankPage4({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ksize.height * 0.12,
              width: double.infinity,
              color: const Color.fromARGB(186, 12, 27, 114),
              child: Padding(
                padding: EdgeInsets.only(
                    top: ksize.height * 0.04,
                    left: ksize.width * 0.03,
                    right: ksize.width * 0.03),
                child: Row(
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(
                      width: ksize.width * 0.10,
                    ),
                    const Icon(Icons.arrow_back_ios,
                        size: 30, color: Colors.white),
                    SizedBox(
                      width: ksize.width * 0.10,
                    ),
                    const Text(
                      'Account',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Bankpage5()));
                      },
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: ksize.height * 0.03),
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
                  ),
                  SizedBox(
                    height: ksize.height * 0.01,
                  ),
                  const TextField2(
                    text: '347 025 145',
                    lable: 'Bank Account',
                  ),
                  SizedBox(
                    height: ksize.height * 0.01,
                  ),
                  const TextField2(
                    text: 'aqibk55500@gmail.com',
                    lable: 'Your Email',
                  ),
                  SizedBox(
                    height: ksize.height * 0.01,
                  ),
                  const TextField2(
                    text: '**********',
                    lable: 'Password',
                  ),
                  SizedBox(
                    height: ksize.height * 0.01,
                  ),
                  const TextField2(
                    text: '+92 3659874155',
                    lable: 'Phone No',
                  ),
                  SizedBox(
                    height: ksize.height * 0.01,
                  ),
                  const Text('Your Address',),
                  Container(
                    height: ksize.height*0.10,
                    width: ksize.width*0.75,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff797979),width: 1,),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: ksize.width*0.03,top: ksize.height*0.001),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hy here you can type your, ',style: TextStyle(color: Color(0xff797979),),),
                          Text('Address if your adress is ',style: TextStyle(color: Color(0xff797979),),),
                          Text('lengthy. Thanks',style: TextStyle(color: Color(0xff797979),),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ksize.height*0.02,),
                  Padding(
                    padding: EdgeInsets.only(left: ksize.width*0.20),
                    child: const Buttonn(text: 'Save Changes'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
