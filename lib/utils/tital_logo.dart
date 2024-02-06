import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class titalLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _titalLogo();
}

class _titalLogo extends State<
    titalLogo> {
  @override
  Widget build(BuildContext context) {
    return Image(
        height: 24.823.h,
        width: 140.w,
        image: const AssetImage('assets/images/logo.png'));
  }
}

// static const grey
