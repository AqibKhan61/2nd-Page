import 'package:flutter/material.dart';

class TextField2 extends StatelessWidget {
  const TextField2({super.key, required this.text, required this.lable});
  final String text;
  final String lable;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lable),
        // SizedBox(
        //   height: ksize.height * 0.01,
        // ),
        SizedBox(
          height: ksize.height*0.05,
          width: ksize.width*0.65,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: text,
              hintStyle: const TextStyle(fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )
              
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
