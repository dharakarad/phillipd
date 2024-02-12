import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/utils/variable_utils.dart';
import 'package:phlipped/view/product_details_1.dart';

import '../commanWidgits/Custom_text.dart';
import '../commanWidgits/common_gridview_builder.dart';

class ApprovedProductList extends StatefulWidget {
  const ApprovedProductList({super.key});

  @override
  State<ApprovedProductList> createState() => _ApprovedProductListState();
}

class _ApprovedProductListState extends State<ApprovedProductList> {
  List<Map<String, dynamic>> data = [
    {
      'image': 'assets/images/Rectangle 25.png',
      'tital': 'Leather Sofa Set',
      'subtital': '249'
    },
    {
      'image': 'assets/images/Rectangle 23A.png',
      'tital': 'Leather Sofa Set',
      'subtital': '92'
    },
    {
      'image': 'assets/images/Rectangle 26.png',
      'tital': 'Leather Sofa Set',
      'subtital': '110'
    },
    {
      'image': 'assets/images/Rectangle 23A.png',
      'tital': 'Leather Sofa Set',
      'subtital': '225'
    },
    {
      'image': 'assets/images/Rectangle 26.png',
      'tital': 'Leather Sofa Set',
      'subtital': '92'
    },
    {
      'image': 'assets/images/Rectangle 23A.png',
      'tital': 'Leather Sofa Set',
      'subtital': '249'
    },
    {
      'image': 'assets/images/Rectangle 25.png',
      'tital': 'Leather Sofa Set',
      'subtital': '92'
    },
    {
      'image': 'assets/images/Rectangle 23A.png',
      'tital': 'Leather Sofa Set',
      'subtital': '110'
    },
    {
      'image': 'assets/images/Rectangle 26.png',
      'tital': 'Leather Sofa Set',
      'subtital': '225'
    },
    {
      'image': 'assets/images/Rectangle 23A.png',
      'tital': 'Leather Sofa Set',
      'subtital': '225'
    },
    {
      'image': 'assets/images/Rectangle 25.png',
      'tital': 'Leather Sofa Set',
      'subtital': '225'
    },
    {
      'image': 'assets/images/Rectangle 23A.png',
      'tital': 'Leather Sofa Set',
      'subtital': '225'
    },
    {
      'image': 'assets/images/Rectangle 26.png',
      'tital': 'Leather Sofa Set',
      'subtital': '110'
    },
    {
      'image': 'assets/images/Rectangle 23A.png',
      'tital': 'Leather Sofa Set',
      'subtital': '225'
    },
    {
      'image': 'assets/images/Rectangle 26.png',
      'tital': 'Leather Sofa Set',
      'subtital': '110'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title:  CustomText(
          'Leather Sofa Set',
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 25.sp,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                VariableUtils.item,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: data.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 1 / 1.2,
                    mainAxisSpacing: 6.0),
                //scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: () {
                          if (index % 2 != 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetails1(),
                                ));
                          }
                        },
                        child: CommonGridView(
                            subtital: data[index]['subtital'],
                            tital: data[index]['tital'],
                            image: data[index]['image']),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
