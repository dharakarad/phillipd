import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/common_tabbar.dart';
import 'package:phlipped/utils/color_util.dart';
import 'package:phlipped/view/massage.dart';

import '../commanWidgits/common_gridview_builder.dart';
import 'buyer_post_details.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Map<String, dynamic>> _data = [
    {
      'image': 'assets/images/Rectangle 22.png',
      'tital': 'Leather Sofa Set',
      'subtital': '249'
    },
    {
      'image': 'assets/images/Rectangle 23.png',
      'tital': 'Green Chair',
      'subtital': '92'
    },
    {
      'image': 'assets/images/Rectangle 24.png',
      'tital': 'Whooden Self',
      'subtital': '110'
    },
    {
      'image': 'assets/images/Rectangle 24.png',
      'tital': 'Whooden Self',
      'subtital': '225'
    },
    {
      'image': 'assets/images/Rectangle 23.png',
      'tital': 'Green Chair',
      'subtital': '92'
    },
    {
      'image': 'assets/images/Rectangle 22.png',
      'tital': 'Leather Sofa Set',
      'subtital': '249'
    },
    {
      'image': 'assets/images/Rectangle 23.png',
      'tital': 'Green Chair',
      'subtital': '92'
    },
    {
      'image': 'assets/images/Rectangle 24.png',
      'tital': 'Whooden Self',
      'subtital': '110'
    },
    {
      'image': 'assets/images/Rectangle 22.png',
      'tital': 'Leather Sofa Set',
      'subtital': '225'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image(
                height: 24.823.h,
                width: 140.w,
                image: const AssetImage('assets/images/logo.png')),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Message(),
                        ));
                  },
                  child: SvgPicture.asset('assets/icon/ic_chat.svg')),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF2F3F2),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintText: 'Search hear'),
              ),
              SizedBox(
                height: 10.h,
              ),
              CommonTabBar(
                title1: 'All',
                title2: 'Open',
                title3: 'Got One?',
              ),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: _data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0.0,
                      childAspectRatio: 1 / 1.1,
                      mainAxisSpacing: 6.0),
                  //scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BuyerPostDetails(),
                                  ));
                            }
                          },
                          child: CommonGridView(
                              subtital: _data[index]['subtital'],
                              tital: _data[index]['tital'],
                              image: _data[index]['image']),
                        ));
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
