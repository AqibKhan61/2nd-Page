import 'package:flutter/material.dart';
import 'package:secondpage/utils/app_icon.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/utils/apptextstyle.dart';


class AppBarr extends StatelessWidget implements PreferredSizeWidget{
   
 
 const AppBarr({super.key, required this.title, required this.ontap ,this.leading,this.actions });

  final String title;
  final Function() ontap;
  final Widget ?leading;
  final List<Widget>?actions;

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return AppBar(
      elevation: 0.0,
        titleSpacing: 5,
        backgroundColor: AppColors.primaryColor,
        leading:leading,
        //  (
        //   AppIcon.menu,
        //   cIconolor: AppColors.white,
        //   size: 25,
        // ),
        title: 
        Row(
          children: [
             Icon(AppIcon.backarrow, size: 25, color: AppColors.white),
             SizedBox(width: ksize.width*0.11),
            Text(
              title,
              style: AppTextStyle.appbarTextstyle,
            ),
          ],
        ),
        centerTitle: true,
        actions: actions,
        
        //  [
        //   Padding(
        //     padding: EdgeInsets.only(right: ksize.width*0.03),
        //     child:  Icon(
        //       AppIcon.setting,
        //       color: AppColors.white,
        //       size: 30,
        //     ),
        //   )
        // ],
      
    );
  }
  
  @override
  
  Size get preferredSize => const Size.fromHeight(55);
}
