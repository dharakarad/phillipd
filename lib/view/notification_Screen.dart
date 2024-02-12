import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/utils/variable_utils.dart';
import 'package:phlipped/view/bottombar.dart';
import 'package:phlipped/view/home.dart';
import 'package:phlipped/view/no_notification_screen_.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> box = [
    {
      'tital': VariableUtils.tiTal,
      'subtital': VariableUtils.time,
      'cotital': VariableUtils.discription,
    },
    {
      'tital': VariableUtils.tiTal,
      'subtital': VariableUtils.time2,
      'cotital': VariableUtils.discription,
    },
    {
      'tital': VariableUtils.tiTal,
      'subtital': VariableUtils.time3,
      'cotital': VariableUtils.discription,
    },
  ];
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
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CommonBottomBar(),
                            ));
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
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const NoNotificationScreen(),
                            ));
                      }
                    },
                    child: Text(
                      'Clear all',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 19.sp,
                          color: Colors.black),
                    )),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 100.h,
                        width: 335.w,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    box[index]['tital'],
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Icon(Icons.arrow_forward_ios_outlined)
                                ],
                              ),
                              Text(
                                box[index]['subtital'],
                                style: const TextStyle(fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                box[index]['cotital'],
                                style:  TextStyle(
                                    fontFamily: 'Poppins', fontSize: 10.sp),
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
