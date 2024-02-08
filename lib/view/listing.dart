import 'dart:ffi';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:phlipped/commanWidgits/Custom_text.dart';
import 'package:phlipped/service/import_file.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/view/post_item.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  List<Map<String, dynamic>> tab = [
    {'icon': 'IconWidgets.union2', 'tital': 'Approved'},
    {'icon': 'IconWidgets.vector', 'tital': 'Processing'},
    {'icon': 'IconWidgets.Union.svg', 'tital': 'Disapproved'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                // Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: LocalAssets(imagePath: IconWidgets.back)),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: DottedBorder(
                      //margin: EdgeInsets.only(bottom: 70),
                      borderType: BorderType.RRect,
                      radius: Radius.circular(10),
                      dashPattern: [10, 10],
                      color: Colors.black,
                      strokeWidth: 2,
                      child: Container(
                        height: 100.h,
                        width: 300.w,
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'New Listing',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 23),
                            )),
                      )),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PostItem(),
                        ));
                  },
                  child: Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: ColorUtils.appGrediant),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: LocalAssets(
                        imagePath: IconWidgets.plush,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  'Recently Listed',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 70.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(0.5)),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  commonRecent(
                      title: 'Approved',
                      color: Colors.green.shade100,
                      icon: IconWidgets.union2),
                  commonRecent(
                      title: 'Processing',
                      color: Colors.orange.shade100,
                      icon: IconWidgets.vector),
                  commonRecent(
                      title: 'Disapproved',
                      color: Colors.red.shade100,
                      icon: IconWidgets.union)
                ],
              ),
            ),
          ),
          CommonListTile(
              image: ImageWidgits.chairB,
              tital: 'Leathr Sofa Set',
              subtital: 'Highest \$580 \nLowest: \$132',
              icon: IconWidgets.union),
          CommonListTile(
              image: ImageWidgits.sofaA,
              tital: 'Leathr Sofa Set',
              subtital: 'Highest \$580 \nLowest: \$132',
              icon: IconWidgets.union2),
          CommonListTile(
              image: ImageWidgits.cubordC,
              tital: 'Leathr Sofa Set',
              subtital: 'Highest \$580 \nLowest: \$132',
              icon: IconWidgets.vector),
        ],
      ),
    ));
  }

  SingleChildScrollView CommonListTile(
      {required String tital,
      required String subtital,
      required String icon,
      required String image}) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 90.w,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5)),
              ]),
          child: ListTile(
            leading: LocalAssets(
              imagePath: image,
            ),
            title: CustomText(
              tital,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 18,
            ),
            subtitle: CustomText(
              subtital,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            trailing: LocalAssets(
              height: 30.w,
              scaleSize: 5,
              imagePath: icon,
            ),
          ),
        ),
      ),
    );
  }

  Column commonRecent(
      {required String title, required String icon, required Color color}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 34.h,
          width: 34.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: color),
          child: Padding(
              padding: const EdgeInsets.all(4),
              child: LocalAssets(imagePath: icon)),
        ),
        CustomText(title),
      ],
    );
  }
}
