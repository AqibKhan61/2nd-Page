import 'package:flutter/material.dart';
import 'package:secondpage/widgets/lists.dart';
import 'package:secondpage/widgets/twoboxex.dart';
import 'package:secondpage/widgets/firstBox.dart';
import 'package:secondpage/widgets/bottombar.dart';
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/mask_group_12.png',
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
                      const Text(
                        'Welcome to',
                        style: TextStyle(
                            color: Color(0xff797979),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0),
                      ),
                      SizedBox(
                        height: _ksize.height * 0.01,
                      ),
                      const Text(
                        'Media Transfer App',
                        style: TextStyle(
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Outfit",
                            fontStyle: FontStyle.normal,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                      padding: EdgeInsets.only(bottom: _ksize.height * 0.01),
                      child: Image.asset('assets/images/group_1328.png')),
                ],
              ),
              SizedBox(
                height: _ksize.height * 0.02,
              ),
              const FirstBox(),
              SizedBox(
                height: _ksize.height * 0.02,
              ),
              const Row(
                children: [
                  TwoBoxes(
                      bgimage: 'assets/images/group_1479.png',
                      svg: 'assets/images/mask_group_18.svg',
                      buttonText: 'Send Now'),
                  Spacer(),
                  TwoBoxes(
                      bgimage: 'assets/images/group_1480.png',
                      svg: 'assets/images/mask_group_19.svg',
                      buttonText: 'Receive'),
                ],
              ),
              SizedBox(
                height: _ksize.height * 0.02,
              ),
              const Text(
                'Latest Activities',
                style: TextStyle(
                    color: Color(0xff212121),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Outfit",
                    fontStyle: FontStyle.normal,
                    fontSize: 17.0),
              ),
              SizedBox(
                height: _ksize.height * 0.01,
              ),
              Expanded(
                
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
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
