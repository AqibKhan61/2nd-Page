import 'package:flutter/material.dart';

// ignore_for_file: no_leading_underscores_for_local_identifiers



class ProgressBar extends StatelessWidget{
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: _ksize.height*0.04),
      child: Container(
        height: _ksize.height*0.10,
        width: _ksize.width*0.20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.blue,
            width: 7,
          ),
          //color: const Color(0xff7ed1ff)   
        ),
        child: const Center(child: Text('100%',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),)),
      ),
    );
  }
}