import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


class ProgressBar extends StatelessWidget{
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Container(
      height: _ksize.height*0.09,
      width: _ksize.width*0.20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromARGB(255, 127, 196, 253)   
      ),
      child: const Center(child: Text('80%')),
    );
  }
}