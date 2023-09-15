import 'package:flutter/material.dart';

class TextFieldd extends StatelessWidget {
  const TextFieldd({super.key,required this.lable, required this.obscure});
  final String lable;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return SizedBox(
      width: ksize.width*0.72,
      height: ksize.height*0.07,
      child: TextFormField(
        textDirection: TextDirection.ltr,
        obscureText: obscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          
          hintText: 
            lable,
          hintStyle:const TextStyle(
            color:Color(0xff797979),
          ),
          ),
          textAlign: TextAlign.start,
          focusNode: FocusNode(),
          
        ),
    );
  }
}
