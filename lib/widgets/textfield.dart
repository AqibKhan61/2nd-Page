import 'package:flutter/material.dart';

class TextFieldd extends StatelessWidget {
  const TextFieldd({super.key,required this.lable});
  final String lable;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return SizedBox(
      width: ksize.width*0.72,
      height: ksize.height*0.07,
      child: TextFormField(
        obscureText: true,
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
          textAlign: TextAlign.center,
          focusNode: FocusNode(),
          
        ),
    );
  }
}
