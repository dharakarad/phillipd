import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/commanWidgits/Common_stepar_4.dart';
import 'package:phlipped/view/post_item_2.dart';

import '../commanWidgits/Custom_text.dart';
import '../commanWidgits/common_stepar.dart';
import '../commanWidgits/common_take_selectphoto.dart';
import '../utils/color_util.dart';
import 'choose_image.dart';
import 'details.dart';

class PostItem1 extends StatefulWidget {
  const PostItem1({super.key});

  @override
  State<PostItem1> createState() => _PostItem1State();
}

class _PostItem1State extends State<PostItem1> {
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
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
            child: const CommonTakeSelectPhoto(),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            'Add Your Cover Photo First',
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
            color: Colors.black,
          ),
          Spacer(),
          CommonStaper4(
            steps1: 'photo',
            steps2: 'Details',
            steps3: 'Price',
            steps4: 'Finish',
            text1: '1',
            text2: '2',
            text3: '3',
            text4: '4',
            currentStep: 1,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostItem2(),
                  ));
            },
            title: 'Next',
          ),
        ],
      ),
    ));
  }
}
