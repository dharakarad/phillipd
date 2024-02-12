import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/view/bottombar.dart';
import 'package:phlipped/view/splash.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 667),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
        // SignUp(),
        //otp(),
        //login(),
        // ForgotPassword(),
        // OtpForgotPassword(),
        // ResetPassword(),
        // ChangePassword(),
        //  home(),
        //Notification(),
        //  CommonBottomBar(),
      ),
    );
  }
}
