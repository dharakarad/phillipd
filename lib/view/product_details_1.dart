import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/commanWidgits/Custom_text.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/service/import_file.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/variable_utils.dart';

import '../utils/assets/common_assets.dart';
import '../utils/assets/images.dart';

class ProductDetails1 extends StatefulWidget {
  const ProductDetails1({super.key});

  @override
  State<ProductDetails1> createState() => _ProductDetails1State();
}

class _ProductDetails1State extends State<ProductDetails1> {
  List<Map<String, dynamic>> data = [
    {
      'icon': IconWidgets.condition,
      'tital': 'Condition',
      'subTitle':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
      'price': '',
    },
    {
      'icon': IconWidgets.truck,
      'tital': 'Shipping Information',
      'subTitle': "Estimated Shipping Charges ",
      'price': '\$87',
    },
    {
      'icon': IconWidgets.location,
      'tital': 'Location',
      'subTitle': '',
      'price': '',
    },
    {
      'icon': IconWidgets.chat,
      'tital': 'Chat Messaging',
      'subTitle': "",
      'price': ''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250.h,
                width: MediaQuery.of(context).size.width,
                child: LocalAssets(
                  imagePath: ImageWidgits.sofa,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: LocalAssets(imagePath: IconWidgets.back)),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  'Leather Sofa Set',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
                CustomText(
                  '\$205',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    'Product details',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                  ),
                ),
                CustomText(
                  textAlign: TextAlign.justify,
                  VariableUtils.subProductDetails,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    leading: LocalAssets(imagePath: data[index]['icon']),
                    title: CustomText(
                      data[index]['tital'],
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    children: [
                      ListTile(
                          title: index == 2
                              ? Image.asset("assets/images/Rectangle 33.png")
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: CustomText(
                                      data[index]['subTitle'],
                                      color: Colors.black,
                                    )),
                                    CustomText(
                                      data[index]['price'],
                                      color: Colors.black,
                                    ),
                                  ],
                                )),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 2,
                    thickness: 1,
                  );
                },
                itemCount: data.length),
          ),
          CustomButton(
            title: 'Add to Cart',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CommonBottomBar(),
                  ));
            },
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    ));
  }
}
