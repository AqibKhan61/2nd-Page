import 'package:flutter/material.dart';


class DropDown extends StatefulWidget{
  const DropDown({super.key});
@override
  State<DropDown> createState() {
    return _DropDownState();
  }
}

class _DropDownState extends State<DropDown>{
  
  List<String> days = ['Monday','Tuesday','Wednesday','Thursday','Friday','Satureday','Sunday'];
  String valueChoose = 'Monday';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint:  Text(valueChoose.toString()),
      // value: valueChoose,
      onChanged: (newValue){
        setState(() {
          valueChoose  = newValue! ;
        });
      },
      items: days.map((String day){
        return DropdownMenuItem(
          value: day,
          child: Text(day),
       );
  }).toList(),
    );
  }
}