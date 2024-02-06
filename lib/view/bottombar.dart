import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phlipped/view/notification_Screen.dart';

import 'account.dart';
import 'cart_screen.dart';
import 'home.dart';

class CommonBottomBar extends StatefulWidget {
  const CommonBottomBar({super.key});

  @override
  State<CommonBottomBar> createState() => _CommonBottomBarState();
}

class _CommonBottomBarState extends State<CommonBottomBar> {
  int myIndex = 0;
  List Screens = [
    const home(),
    NotificationScreen(),
    CartScreen(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
              showUnselectedLabels: true,
              onTap: (index) {
                setState(() {
                  myIndex = index;
                });
              },
              // Color(0xFFD9F0FA)
              currentIndex: myIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      height: 38.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: myIndex == 0
                              ? Color(0xFFD9F0FA)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(11)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'assets/icon/ic_home_fill.svg',
                          color:
                              myIndex == 0 ? Color(0xFF009BDF) : Colors.black,
                        ),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      height: 38.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: myIndex == 1
                              ? Color(0xFFD9F0FA)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(11)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'assets/icon/ic_notification.svg',
                          color:
                              myIndex == 1 ? Color(0xFF009BDF) : Colors.black,
                        ),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      height: 38.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: myIndex == 2
                              ? Color(0xFFD9F0FA)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(11)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          'assets/icon/ic_cart.svg',
                          color:
                              myIndex == 2 ? Color(0xFF009BDF) : Colors.black,
                        ),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      height: 38.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: myIndex == 3
                              ? Color(0xFFD9F0FA)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(11)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'assets/icon/ic_profile.svg',
                          color:
                              myIndex == 3 ? Color(0xFF009BDF) : Colors.black,
                        ),
                      ),
                    ),
                    label: '')
              ]),
        ),
      ),
      body: Screens[myIndex],
    );
  }
}
