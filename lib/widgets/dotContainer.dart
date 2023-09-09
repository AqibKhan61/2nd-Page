import 'package:flutter/material.dart';
// ignore_for_file: file_names

// ignore_for_file: no_leading_underscores_for_local_identifiers



class DotCon extends StatelessWidget{
  const DotCon({super.key});
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return SizedBox(
      child: Center(
        child: Container(
          height: _ksize.height*0.01,
          width: _ksize.width*0.02,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.blue,),
        ),
      ),
    );
  }
}