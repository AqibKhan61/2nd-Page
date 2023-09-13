import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/screens/bankpage8.dart';
import 'package:secondpage/widgets/dropdown2.dart';
import 'package:secondpage/widgets/textfield2.dart';




class BankPage7 extends StatelessWidget{
  const BankPage7({super.key});
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarr(title: 'Transaction'),
      body: Padding(
        padding: EdgeInsets.only(left: ksize.width*0.15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: EdgeInsets.only(right: ksize.width*0.15,left:0,),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BankPage8()));
              },
              child: Image.asset('assets/images/transaction.png',)),
          ),
          SizedBox(height: ksize.height*0.01,),
          const TextField2(text: '00 123 456', lable: 'From bank Account'),
          SizedBox(height: ksize.height*0.01,),
          const Text('Select the Bank',),
          const DropDown2(),
          SizedBox(height: ksize.height*0.01,),
          const Text('Amount',),
          const DropDown2(),
           SizedBox(height: ksize.height*0.01,),
          const Text('Message'),
          SizedBox(
                height: ksize.height*0.09,
                width: ksize.width*0.65,
                child: TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Hy, there you can add your Message if its lengthy',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                ),
              ),
              SizedBox(height: ksize.height*0.03,),
              Row(
                children: [
                  const Buttonn(text: 'Send'),
                  SizedBox(width: ksize.width*0.01,),
                  const Text('Or'),
                  SizedBox(width: ksize.width*0.01,),
                  const Buttonn(text: 'Cancel'),
                ],
              )
      
        ]),
      ),
    );
  }
}