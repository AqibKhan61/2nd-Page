import 'package:flutter/material.dart';

class Buttonn extends StatelessWidget {
  const Buttonn({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: ksize.height * 0.05,
          width: ksize.width * 0.30,
          decoration: BoxDecoration(
            color: const Color.fromARGB(186, 12, 27, 114),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Outfit",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
            ),
          ),
        ),
      ),
    );
  }
}
