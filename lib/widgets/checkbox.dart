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
    return Checkbox(value: isChecked, onChanged: (bool? value){
      setState(() {
        isChecked = value!;
      });
    
    },
    splashRadius: 0 ,
   
    );
  }
}