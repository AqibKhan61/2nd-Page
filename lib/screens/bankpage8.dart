import 'package:flutter/material.dart';
import 'package:secondpage/widgets/list2.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/screens/bankpage9.dart';
import 'package:secondpage/widgets/container.dart';
import 'package:secondpage/widgets/smallcontainer.dart';



class BankPage8 extends StatelessWidget {
   BankPage8({super.key});

   List<Itemlist> itemsss = [
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80'),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80'),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80'),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80'),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80'),
    Itemlist('Lorem Epsom Company', 'Received Payment', '\$2,030.80'),
  ];
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBarr(title: 'Transaction'),
        body: Column(
          children: [
            Container(
              height: ksize.height * 0.20,
              width: double.infinity,
              color: const Color.fromARGB(186, 12, 27, 114),
              child: Padding(
                padding: EdgeInsets.only(
                  left: ksize.width * 0.07,
                  top: ksize.height * 0.14,
                  //right: ksize.width * 0.07,
                ),
                child: Row(children: [
                  Containerr(color: Colors.blue, text: 'Complete'),
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
                        time: itemsss[index].money);
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: ksize.height*0.05,left: ksize.width*0.25),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios,size: 28,),
                  //SizedBox(width: ksize.width*0.01,),
                  SmallContainer(color: Colors.grey,text: '1'),
                  SizedBox(width: ksize.width*0.01),
                  SmallContainer(color: Colors.blue, text: '2'),
                  SizedBox(width: ksize.width*0.01),
                  SmallContainer(color: Colors.grey, text: '3'),
                  SizedBox(width: ksize.width*0.01),
                  SmallContainer(color: Colors.grey, text: '4'),
                  SizedBox(width: ksize.width*0.01),
                  SmallContainer(color: Colors.grey, text: '5'),
                  SizedBox(width: ksize.width*0.02,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BankPage9()));
                    },
                    child: const Icon(Icons.arrow_forward_ios,size: 28,)),
            
            
                ],
              ),
            )
          ],
          
        ));
  }
}

class Itemlist {
  Itemlist(this.title, this.text, this.money);

  final String title;
  final String text;
  final String money;
}
