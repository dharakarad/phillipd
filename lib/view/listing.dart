import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/view/account.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                // Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                  'assets/icon/ic_back.svg',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 45.h,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    dashPattern: [10, 10],
                    color: Colors.black,
                    strokeWidth: 2,
                    child: Container(
                      height: 134.h,
                      width: 300.w,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                height: 125.h,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              )
            ],
          )
        ],
      ),
    ));
  }
}
