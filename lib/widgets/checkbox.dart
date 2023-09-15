import 'package:flutter/material.dart';


class CheckboxWidget extends StatefulWidget{
  const CheckboxWidget({super.key});
  @override
  State<CheckboxWidget> createState() {
    return _CheckBoxWidgetState();
  }
}

class _CheckBoxWidgetState extends State<CheckboxWidget>{
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.50,
      child: Checkbox(
        side: const BorderSide(width: 1),
        value: isChecked, onChanged: (bool? value){
        setState(() {
          isChecked = value!;
        });
      
      },
      splashRadius: 0 ,
      
       
      ),
    );
  }
}