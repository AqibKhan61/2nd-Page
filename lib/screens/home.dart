import 'package:flutter/material.dart';
import 'package:secondpage/widgets/lists.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/utils/app_images.dart';
import 'package:secondpage/widgets/twoboxex.dart';
import 'package:secondpage/widgets/firstBox.dart';
import 'package:secondpage/widgets/bottombar.dart';
import 'package:secondpage/utils/apptextstyle.dart';
// ignore_for_file: no_leading_underscores_for_local_identifiers

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Lists> items = [
    Lists('assets/images/group_1320.png', 'Send to Techno Camon-15',
        '12 Files Transfered', '10 days ago'),
    Lists('assets/images/group_1244.png', 'Received From Techno Camon-15',
        '12 Files Transfered', '10 Aug,2023'),
    Lists('assets/images/group_1320.png', 'Send to Techno Camon-15',
        '12 Files Transfered', '10 days ago'),
    Lists('assets/images/group_1244.png', 'Received From Techno Camon-15',
        '12 Files Transfered', '10 Aug,2023'),
  ];
  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _ksize.height,
        width: _ksize.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.backgroungImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: _ksize.height * 0.06,
            left: _ksize.width * 0.04,
            right: _ksize.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: AppTextStyle.textStyletitle.copyWith(
                            color: Color.fromARGB(255, 105, 151, 141),
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            ),
                      ),
                      // SizedBox(
                      //   height: _ksize.height * 0.01,
                      // ),
                       Text(
                        'Media Transfer App',
                        style: AppTextStyle.textStyletitle.copyWith(fontSize: 20,color: Colors.black),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                      // padding: EdgeInsets.only(bottom: _ksize.height * 0.01),
                      child: Image.asset(AppImages.IconImage)),
                ],
              ),
              SizedBox(
                height: _ksize.height * 0.02,
              ),
              const FirstBox(),
              SizedBox(
                height: _ksize.height * 0.03,
              ),
              Row(
                children: [
                  TwoBoxes(
                      bgimage: AppImages.fstboxbgImage,
                      svg: AppImages.fstboxiconImage,
                      buttonText: 'Send Now'),
                  const Spacer(),
                  TwoBoxes(
                      bgimage: AppImages.scndboxbgImage,
                      svg: AppImages.scndboxiconImage,
                      buttonText: 'Receive'),
                ],
              ),
              SizedBox(
                height: _ksize.height * 0.03,
              ),
               Text(
                'Latest Activities',
                style: AppTextStyle.textStyletitle.copyWith(color: Colors.black,fontSize: 20),
              ),
              SizedBox(
                height: _ksize.height * 0.01,
              ),
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    itemCount: items.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Listss(
                          title: items[index].titl,
                          image: items[index].img,
                          text: items[index].txt,
                          time: items[index].tm);
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class Lists {
  Lists(this.img, this.titl, this.txt, this.tm);

  final String img;
  final String titl;
  final String txt;
  final String tm;
}

SizedBox customsize = SizedBox(
  height: 12,
);
