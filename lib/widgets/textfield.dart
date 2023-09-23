import 'package:flutter/material.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/utils/apptextstyle.dart';

class TextFieldd extends StatelessWidget {
  final String lable;
  final bool obscure;
  final bool autofocus;
  final dynamic validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const TextFieldd(
      {super.key,
      required this.lable,
      this.obscure = false,
      this.autofocus = false,
      this.controller,
      this.keyboardType,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return SizedBox(
      width: ksize.width*0.8,
      child: TextFormField(
        autofocus: autofocus,
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscure,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 3,bottom:3,left: 8,right: 8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: lable,
            hintStyle: AppTextStyle.textStylesmall.copyWith(fontSize: 18)),
        focusNode: FocusNode(),
      ),
    );
  }
}
