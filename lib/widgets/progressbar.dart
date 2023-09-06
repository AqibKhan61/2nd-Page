import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


class ProgressBar extends StatelessWidget{
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top:_ksize.height*0.01,bottom: _ksize.height*0.06 ),
      child: Container(
        height: _ksize.height*0.09,
        width: _ksize.width*0.20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromARGB(255, 127, 196, 253)   
        ),
        child: Center(child: const Text('80%')),
      ),
    );
  }
}