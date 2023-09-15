import 'package:flutter/material.dart';


class AppBarr extends StatelessWidget implements PreferredSizeWidget{
   
 
 const AppBarr({super.key, required this.title, required this.ontap});

  final String title;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return AppBar(
      elevation: 0.0,
        titleSpacing: 5,
        backgroundColor: const Color.fromARGB(186, 12, 27, 114),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 25,
        ),
        title: Row(
          children: [
           const Icon(Icons.arrow_back_ios, size: 25, color: Colors.white),
             SizedBox(width: ksize.width*0.11),
            InkWell(
              onTap: ontap,
              child: Text(
                title,
                style:const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: ksize.width*0.03),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      
    );
  }
  
  @override
  
  Size get preferredSize => const Size.fromHeight(55);
}
