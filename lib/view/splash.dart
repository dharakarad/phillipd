import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/service/import_file.dart';
import 'package:phlipped/view/authentication/sighn_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  static const String KEYSIGHNUP = 'Sigh Up';
  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Image(
            height: 46.98.h,
            width: 260.w,
            image: const AssetImage('assets/images/logo.png')),
      ),
    ));
  }

  void whereToGo() async {
    var sharePref = await SharedPreferences.getInstance();
    var isLoggedin = sharePref.getBool(KEYSIGHNUP);
    Timer(const Duration(seconds: 2), () {
      if (isLoggedin != null) {
        if (isLoggedin) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CommonBottomBar(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUp(),
              ));
        }
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUp(),
            ));
      }
      //
    });
  }
}
