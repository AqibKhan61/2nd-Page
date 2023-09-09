import '../widgets/boxes.dart';
import 'package:flutter/material.dart';
import 'package:secondpage/widgets/picture.dart';
import 'package:secondpage/widgets/container.dart';



// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<item> items = [
    item("assets/images/mask_group_29.svg", "App"),
    item("assets/images/mask_group_29.svg", 'Images'),
    item("assets/images/mask_group_29.svg", "videos"),
    item("assets/images/mask_group_29.svg", "Files"),
    item("assets/images/mask_group_29.svg", "Imran"),
  ];

 
  @override
  Widget build(BuildContext context) {
    var ksize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: ksize.height,
      width: ksize.width,
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
            top: ksize.height * 0.06,
            left: ksize.width * 0.04,
            right: ksize.width * 0.04),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.arrow_back)),
                SizedBox(
                  width: ksize.width * 0.04,
                ),
                const Text('Select Media'),
                const Spacer(),
                Container(
                  height: ksize.height * 0.02,
                  width: ksize.width * 0.03,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: ksize.width * 0.02,
                ),
                const Text('Select All'),
              ],
            ),
            SizedBox(
              height: ksize.height * 0.03,
            ),
            SizedBox(
              height: ksize.height * 0.06,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Box(
                        text: items[index].text, image: items[index].img);
                  }),
            ),
            SizedBox(
              height: ksize.height * 0.04,
            ),
           Container(
      height: ksize.height*0.7,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: GridView.builder(
        padding: EdgeInsets.only(left: ksize.width*0.03,right: ksize.width*0.03,top: ksize.height*0.02,bottom: ksize.height*0.02),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 7,
        ),
        itemCount: picturs.length,
        itemBuilder: (context,index){
          return PictureContainer(imege: picturs[index]);
        },
      ),
    )
          ],
        ),
      ),
    ));
  }
}

class item {
  final String img;
  final String text;
  item(this.img, this.text);
}

List<String> picturs = [
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',
        'assets/images/component_17_5.png',


  ];