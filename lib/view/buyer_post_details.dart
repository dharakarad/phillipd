import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/view/post_item_1.dart';

import '../commanWidgits/Custom_text.dart';
import '../utils/assets/common_assets.dart';
import '../utils/assets/icons.dart';
import '../utils/assets/images.dart';
import '../utils/variable_utils.dart';

class BuyerPostDetails extends StatefulWidget {
  const BuyerPostDetails({super.key});

  @override
  State<BuyerPostDetails> createState() => _BuyerPostDetailsState();
}

class _BuyerPostDetailsState extends State<BuyerPostDetails> {
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
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                'Leather Sofa Set',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25.sp,
              ),
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
          SizedBox(
            height: 100.h,
          ),
          CustomButton(
            title: 'Got One',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostItem1(),
                  ));
            },
          )
        ],
      ),
    ));
  }
}
