import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';

class NoNotificationScreen extends StatefulWidget {
  const NoNotificationScreen({super.key});

  @override
  State<NoNotificationScreen> createState() => _NoNotificationScreenState();
}

class _NoNotificationScreenState extends State<NoNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      {
                        Navigator.pop(context);
                      }
                    },
                    child: SvgPicture.asset(
                      'assets/icon/ic_back.svg',
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                   Text(
                    'Notification',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const Image(image: AssetImage('assets/images/amico.png')),
            SizedBox(
              height: 10.h,
            ),
             Text(
              'NO notification',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700),
            ),
             Text(
              'Check back here for Updates',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
