import 'package:flutter/material.dart';


class DropDown2 extends StatefulWidget{
  const DropDown2({super.key});
  @override
  State<DropDown2> createState() {
    return _DropDown2State();
  }
}

class _DropDown2State extends State<DropDown2>{
  List<String> banksname = ['Alfalah','HBL','Allied','National Bank','Islamic Bank'];
  String choosValue = 'Alfalah';
  @override
  Widget build(BuildContext context) {
  final ksize = MediaQuery.of(context).size;

    return Container(
       height: ksize.height*0.05,
       width: ksize.width*0.68  ,
       decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff797979)),
        borderRadius: BorderRadius.circular(5),
       ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          padding: EdgeInsets.only(left: ksize.width*0.01),
          icon: const Icon(Icons.keyboard_arrow_down, size: 20),        
          hint: const Text('  Select                               '),
          value: choosValue,
          onChanged: (newValue){
            setState(() {
              choosValue = newValue!;
            });
          },
          items: banksname.map((String bank){
            return DropdownMenuItem(
              value: bank,
              child: Text(bank),);
            
          } ).toList(),
          ),
      ),
    );
  }
}