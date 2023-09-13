import 'package:flutter/material.dart';


class AppBarr extends StatelessWidget implements PreferredSizeWidget{
   
 
 AppBarr({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return AppBar(
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
            const SizedBox(width: 16),
            Text(
              title,
              style:const TextStyle(color: Colors.white, fontSize: 25),
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
