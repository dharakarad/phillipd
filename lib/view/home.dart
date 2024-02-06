import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/utils/color_util.dart';

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
              child: SvgPicture.asset('assets/icon/ic_chat.svg'),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
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
              TabBar(
                  // unselectedLabelColor: Colors.redAccent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: ColorUtils.appGrediant),
                  unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: ColorUtils.black),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
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
                        child: Text('All'),
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
                        child: Text('Open'),
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
                        child: Text('Got One?'),
                      ),
                    ),
                  ]),
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
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorUtils.grey),
                        child: Column(
                          children: [
                            Container(
                              height: 80.w,
                              width: 100.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(_data[index]['image']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                _data[index]['tital'],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    color: ColorUtils.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '\$${_data[index]['subtital']}',
                                style: TextStyle(
                                    color: ColorUtils.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
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
