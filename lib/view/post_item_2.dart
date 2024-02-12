import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/service/import_file.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/view/home.dart';

import '../commanWidgits/Common_stepar_4.dart';
import '../commanWidgits/Custom_text.dart';
import '../commanWidgits/common_stepar.dart';
import '../commanWidgits/common_take_selectphoto.dart';
import '../utils/color_util.dart';
import 'choose_image.dart';
import 'details.dart';

class PostItem2 extends StatefulWidget {
  const PostItem2({super.key});

  @override
  State<PostItem2> createState() => _PostItem2State();
}

class _PostItem2State extends State<PostItem2> {
  int currentStap = 0;
  List<Map<String, dynamic>> data = [
    {
      'tital': 'Description here',
      'subTitle':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
    },
    {
      'tital': 'Price',
      'subTitle': "\$205",
    },
    {
      'tital': 'Condition',
      'subTitle': 'Write your conditions here',
    },
    {
      'tital': 'Preferred Location',
      'subTitle': "Allentown, New Mexico",
    },
    {
      'tital': 'Shipping Charges',
      'subTitle': "\$8.99",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
            child: CustomText(
          'Post An Item',
          fontWeight: FontWeight.w600,
          fontSize: 30.sp,
          color: Colors.black,
        )),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: CustomText(
                'Cancel',
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
                color: Color(0xFF009BDF),
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: const CommonTakeSelectPhoto(),
          ),
          CustomText(
            'Add Your Cover Photo First',
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LocalAssets(
              imagePath: ImageWidgits.sofaA,
              height: 150.h,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(data[index]['tital']),
                    trailing: Icon(Icons.arrow_forward_ios),
                    children: [
                      ListTile(
                          title: Column(
                        children: [
                          Container(
                            height: 40.w,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey.shade200,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: CustomText(
                                    data[index]['subTitle'],
                                    color: Colors.black,
                                  )),
                            ),
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
          CommonStaper4(
            steps1: 'photo',
            steps2: 'Details',
            steps3: 'Price',
            steps4: 'Finish',
            text1: '1',
            text2: '2',
            text3: '3',
            text4: '4',
            currentStep: 3,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CommonBottomBar(),
                  ));
            },
            title: 'post',
          ),
        ],
      ),
    ));
  }
}
