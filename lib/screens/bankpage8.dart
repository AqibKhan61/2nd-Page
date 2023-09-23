import 'package:flutter/material.dart';
import 'package:secondpage/widgets/list2.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/screens/bankpage9.dart';
import 'package:secondpage/widgets/container.dart';
import 'package:secondpage/widgets/smallcontainer.dart';

class BankPage8 extends StatelessWidget {
  BankPage8({super.key});

  List<Itemlist> itemsss = [
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
    Itemlist(
        'Lorem Elite LTD                ', 'Transfer Money ', '\$2,030.80',Colors.blue),
    Itemlist('Owasoft Pvt Ltd                ', 'Withdraw Money', '\$2,030.80',Colors.grey),
    Itemlist('Lorem Epsom Company', 'Gas And Electricity Bill', '\$2,030.80',Colors.yellow),
    Itemlist(
        'Lorem Elite LTD                ', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
    Itemlist('Lorem Epsom Company', 'Transfer Money', '\$2,030.80',Colors.orange),
  ];
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBarr(title: 'Transaction',ontap: (){}),
        body: Column(
          children: [
            Container(
              height: ksize.height * 0.20,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                     AppColors.primaryColor,
                    Color.fromARGB(184, 43, 60, 156),
                  ])),
              child: Padding(
                padding: EdgeInsets.only(
                  left: ksize.width * 0.07,
                  top: ksize.height * 0.14,
                  //right: ksize.width * 0.07,
                ),
                child: Row(children: [
                  Containerr(color: AppColors.linkColor, text: 'Complete'),
                  SizedBox(width: ksize.width * 0.05),
                  Containerr(color: Colors.grey, text: 'In Progress'),
                ]),
              ),
            ),
            SizedBox(
              height: ksize.height * 0.04,
            ),
            Container(
              height: ksize.height * 0.53,
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: itemsss.length,
                  itemBuilder: (context, index) {
                    return List2(
                        title: itemsss[index].title,
                        text: itemsss[index].text,
                        time: itemsss[index].money,
                        color: itemsss[index].color,
                        );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: ksize.height * 0.05, left: ksize.width * 0.25),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 28,
                  ),
                  //SizedBox(width: ksize.width*0.01,),
                  SmallContainer(
                      color: const Color.fromARGB(255, 209, 203, 203),
                      text: '1'),
                  SizedBox(width: ksize.width * 0.01),
                  SmallContainer(color: AppColors.linkColor, text: '2'),
                  SizedBox(width: ksize.width * 0.01),
                  SmallContainer(
                      color: const Color.fromARGB(255, 209, 203, 203),
                      text: '3'),
                  SizedBox(width: ksize.width * 0.01),
                  SmallContainer(
                      color: const Color.fromARGB(255, 209, 203, 203),
                      text: '4'),
                  SizedBox(width: ksize.width * 0.01),
                  SmallContainer(
                      color: const Color.fromARGB(255, 209, 203, 203),
                      text: '5'),
                  SizedBox(
                    width: ksize.width * 0.02,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BankPage9()));
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 28,
                      )),
                ],
              ),
            )
          ],
        ));
  }
}

class Itemlist {
  Itemlist(this.title, this.text, this.money,this.color);

  final String title;
  final String text;
  final String money;
  final Color color;
}
