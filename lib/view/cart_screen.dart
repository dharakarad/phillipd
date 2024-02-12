import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:phlipped/view/bottombar.dart';

import 'home.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                    'Cart',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.w,
            ),
            Center(
              child: SizedBox(
                height: 150.w,
                child: Lottie.asset(
                  'assets/lottie/cart.json',
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
             Text(
              'Cart is Empty',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
