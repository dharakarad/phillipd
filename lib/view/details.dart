import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/commanWidgits/common_stepar.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/view/listing.dart';
import 'package:phlipped/view/post_item.dart';

import '../commanWidgits/Custom_text.dart';
import '../utils/assets/common_assets.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostItem(),
                    ));
              },
              child: const CustomText(
                'Cancel',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xFF009BDF),
              ))
        ],
      ),
      body: Column(
        children: [
          LocalAssets(
            imagePath: ImageWidgits.flower4,
            height: 250.h,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          CustomText(
            'I want one of these or similar',
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
            color: Color(0xFF009BDF),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  'Description here',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18.sp,
                )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: CustomText(
                    'For example: brand, model, color, and size.',
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          CommonStaper(
              currentStep: 2,
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Listing(),
                    ));
              },
              title: 'Post'),
        ],
      ),
    ));
  }
}
