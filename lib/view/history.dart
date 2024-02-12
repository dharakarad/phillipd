import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/commanWidgits/Custom_text.dart';
import 'package:phlipped/commanWidgits/common_tabbar.dart';

import '../commanWidgits/common_list_tile.dart';
import '../utils/assets/icons.dart';
import '../utils/assets/images.dart';
import '../utils/color_util.dart';

class History extends StatefulWidget {
  History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<Map<String, dynamic>> listData = [
    {
      'image': ImageWidgits.chairB,
      'tital': 'Leathr Sofa Set',
      'subtital': 'Highest \$580 \nLowest: \$132',
      'icon': IconWidgets.forward
    },
    {
      'image': ImageWidgits.cubordC,
      'tital': 'Leathr Sofa Set',
      'subtital': 'Highest \$580 \nLowest: \$132',
      'icon': IconWidgets.forward
    },
    {
      'image': ImageWidgits.sofaA,
      'tital': 'Leathr Sofa Set',
      'subtital': 'Highest \$580 \nLowest: \$132',
      'icon': IconWidgets.forward
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title:  Padding(
            padding: EdgeInsets.all(70),
            child: CustomText(
              'History',
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 30.sp,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TabBar(
                  //unselectedLabelColor: Colors.redAccent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: ColorUtils.appGrediant),
                  unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      color: ColorUtils.black),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      color: Colors.white),
                  tabs: [
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        height: 36.h,
                        width: 107.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text('Buy'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        height: 36.h,
                        width: 107.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text('Sell'),
                      ),
                    ),
                  ]),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (context, index) {
                    return CommonListTile(
                        tital: listData[index]['tital'],
                        subtital: listData[index]['subtital'],
                        icon: listData[index]['icon'],
                        image: listData[index]['image']);
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
