import 'package:flutter/material.dart';

class TextFieldd extends StatelessWidget {
  const TextFieldd({super.key,required this.lable});
  final String lable;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Container(
      height: ksize.height * 0.07,
      width: ksize.width * 0.75,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff797979),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
        //color: Colors.black,
      ),
      child:  TextFormField(
        decoration: InputDecoration(
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
