import 'package:flutter/material.dart';
import 'package:secondpage/widgets/appbar.dart';
import 'package:secondpage/utils/app_colors.dart';
import 'package:secondpage/utils/apptextstyle.dart';
import 'package:secondpage/widgets/profilrimage.dart';
import 'package:secondpage/widgets/lastcontainer.dart';

class BankPage9 extends StatelessWidget {
  BankPage9({super.key});

  List itms = [
    ContainerItems(Colors.blue, (Icons.water_drop), 'Water'),
    ContainerItems(Colors.yellow, (Icons.lightbulb), 'Electricity'),
    ContainerItems(Colors.green, (Icons.local_fire_department), 'Gas'),
    ContainerItems(Colors.pink, (Icons.shopping_bag), 'Shopping'),
    ContainerItems(AppColors.primaryColor, (Icons.mobile_friendly), 'Phone'),
    ContainerItems(Colors.grey, (Icons.credit_card), 'Credit Card'),
    ContainerItems(Colors.red, (Icons.security), 'Insurance'),
    ContainerItems(Colors.blue, (Icons.home), 'Mortague'),
    ContainerItems(AppColors.primaryColor, (Icons.event_note), 'Other Bills'),
  ];
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarr(title: 'Payment', ontap: () {}),
      body: Column(
        children: [
          Container(
            height: ksize.height * 0.22,
            width: double.infinity,
            color: const Color.fromARGB(186, 12, 27, 114),
            child: Padding(
              padding: EdgeInsets.only(left: ksize.width * 0.08),
              child: Row(
                children: [
                  const ProfileImage(),
                  SizedBox(
                    width: ksize.width * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: ksize.height * 0.08),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BALANCE',
                          style: AppTextStyle.textStyleMedium.copyWith(color: AppColors.linkColor),
                        ),
                        Text(
                          '\$4,180.20',
                          style: AppTextStyle.textStyletitle.copyWith(color: AppColors.white,fontSize: 28),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: ksize.height * 0.05),
          Container(
            height: ksize.height * 0.5,
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 3,
              ),
              itemCount: itms.length,
              itemBuilder: (context, index) {
                return LastContainer(
                  color: itms[index].color,
                  icon: itms[index].icon,
                  txt: itms[index].text,
                );
              },
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    right: ksize.width * 0.09, top: ksize.height * 0.03),
                child: const Text(
                  'more>>',
                  style: AppTextStyle.linkTextstyle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ContainerItems {
  ContainerItems(this.color, this.icon, this.text);

  IconData icon;
  Color color;
  String text;
}
