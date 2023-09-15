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
    final ksize = MediaQuery.of(context).size;
    return Container(
      height: ksize.height*0.05,
      //width: ksize.width*0.32,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff797979),),
        borderRadius: BorderRadius.circular(5)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          padding: EdgeInsets.only(left:ksize.width*0.01,),
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
        ),
      ),
    );
  }
}