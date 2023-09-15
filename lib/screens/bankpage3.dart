import 'package:flutter/material.dart';
import 'package:secondpage/widgets/list2.dart';
import 'package:secondpage/widgets/button.dart';
import 'package:secondpage/screens/bankpage4.dart';
import 'package:secondpage/widgets/profilrimage.dart';

class BankPage3 extends StatelessWidget {
  BankPage3({super.key});

  List<Itemlist> itemsss = [
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80',const Color.fromARGB(186, 12, 27, 114),),
  ];

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: ksize.height * 0.55,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(186, 12, 27, 114),
                  Color.fromARGB(184, 43, 60, 156),
                ])),
            child: Padding(
              padding: EdgeInsets.only(
                  top: ksize.height * 0.06,
                  left: ksize.width * 0.04,
                  right: ksize.width * 0.04),
              child: Column(
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.menu, color: Colors.white),
                      Spacer(),
                      Icon(Icons.settings, color: Colors.white),
                    ],
                  ),
                  const ProfileImage(),
                  SizedBox(
                    height: ksize.height * 0.02,
                  ),
                  const Text(
                    'YOUR NAME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'your-email@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: ksize.height * 0.02,
                  ),
                  Container(
                    height: ksize.height * 0.16,
                    width: ksize.width * 0.70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.only(top: ksize.height * 0.01),
                      child: const Column(
                        children: [
                          Text(
                            'BALANCE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 117, 196)),
                          ),
                          Text(
                            '\$4,180.20',
                            style: TextStyle(
                              color: Color.fromARGB(186, 12, 27, 114),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Buttonn(text: 'Transfer',color:  Color.fromARGB(186, 12, 27, 114),textcolor: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: ksize.height * 0.03,
          ),
          const Text(
            'LATEST TRANSACTIONS',
            style: TextStyle(color: Color.fromARGB(255, 21, 117, 196)),
          ),
          SizedBox(
            height: ksize.height * 0.02,
          ),
          Container(
            height: ksize.height * 0.3,
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BankPage4()));
            },
            child: Padding(
              padding: EdgeInsets.only(left: ksize.width * 0.7),
              child: const Text(
                'more>>>',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Itemlist {
  Itemlist(this.title, this.text, this.money,this.color);

  final String title;
  final String text;
  final String money;
  final  Color color;
}
