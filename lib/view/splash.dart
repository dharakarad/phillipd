import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/view/authentication/sighn_up.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2) ,() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Image(
            height: 46.98.h,
            width: 260.w,
            image: AssetImage('assets/images/logo.png')),
      ),
    ));
  }
}
