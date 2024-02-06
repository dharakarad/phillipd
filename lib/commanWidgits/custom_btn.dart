import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/utils/color_util.dart';
import '../utils/typedef_utils.dart' as typdef;

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.title});
  final typdef.OnTap? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 44.h,
      width: 335.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: ColorUtils.appGrediant),
      child: GestureDetector(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp),
              ),
            ),
          ),
          onTap: onTap),
    );
  }
}
