import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/utils/variable_utils.dart';
import 'package:phlipped/view/bottombar.dart';
import 'package:phlipped/view/home.dart';
import 'package:phlipped/utils/color_util.dart';
import 'package:pinput/pinput.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 44.w,
      height: 44.h,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor),
      ),
    );

    return SafeArea(
        child: Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              LocalAssets(
                imagePath: ImageWidgits.logo,
                height: 24.823.h,
                width: 140.w,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Text(
                VariableUtils.enterVeficationCode,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  VariableUtils.verificationCodeSend,
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              const Text(
                VariableUtils.enterCode,
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Directionality(
                // Specify direction if desired
                textDirection: TextDirection.ltr,
                child: Pinput(
                  controller: pinController,
                  focusNode: focusNode,
                  separatorBuilder: (index) => const SizedBox(width: 8),
                  validator: (value) {
                    return value == '2222' ? null : 'Pin is incorrect';
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: focusedBorderColor,
                      ),
                    ],
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: fillColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(
                  title: 'Varify NoW',
                  onTap: () {
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CommonBottomBar(),
                          ));
                    }
                  }),
              // Container(
              //     //height: 44.h,
              //     width: 335.w,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       gradient: ColorUtils.appGrediant,
              //     ),
              //     child: GestureDetector(
              //         child: Center(
              //           child: Padding(
              //             padding: const EdgeInsets.symmetric(vertical: 10),
              //             child: Text(
              //               'Verify Now',
              //               style: TextStyle(
              //                   color: Colors.white,
              //                   fontFamily: 'Poppins',
              //                   fontWeight: FontWeight.w700,
              //                   fontSize: 14.sp),
              //             ),
              //           ),
              //         ),
              //        )),
            ],
          ),
        ),
      ),
    ));
  }
}
