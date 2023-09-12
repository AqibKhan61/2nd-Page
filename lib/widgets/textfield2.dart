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
        Container(
          height: ksize.height * 0.05,
          width: ksize.width * 0.75,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff797979),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
            //color: Colors.black,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: ksize.width*0.02),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: text,
                hintStyle: const TextStyle(fontSize: 14),
                enabledBorder: InputBorder.none,
                
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}
