import 'package:flutter/material.dart';
import 'package:secondpage/utils/apptextstyle.dart';

class TextField2 extends StatelessWidget {
  const TextField2({super.key, required this.text, required this.lable, required this.obscure});
  final String text;
  final String lable;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lable,style: AppTextStyle.textStyleMedium,),
        SizedBox(
          height: ksize.height*0.05,
          width: ksize.width*0.68,
          child: TextFormField(
            obscureText: obscure,
            decoration: InputDecoration(
              hintText: text,
              hintStyle: AppTextStyle.textStylesmall.copyWith(fontSize: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )
              
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
