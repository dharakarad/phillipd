import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/service/import_file.dart';
import 'package:phlipped/utils/color_util.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/utils/variable_utils.dart';

import '../../commanWidgits/common_text_field.dart';
import '../../utils/assets/common_assets.dart';
import '../../utils/no_leading_space.dart';
import '../../utils/regular_expretion_utils.dart';
import 'login.dart';
import 'otp_forgot_password.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        child: LocalAssets(
                          imagePath: IconWidgets.back,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                      ),
                      LocalAssets(
                        imagePath: ImageWidgits.logo,
                        height: 24.823.h,
                        width: 140.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  VariableUtils.forgotPassword,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20.h,
                ),

                ///  PHONE.................
                CommonTextField(
                  textEditController: phoneController,
                  maxLength: 10,
                  hintText: VariableUtils.phoneNumber,
                  pIcon: LocalAssets(imagePath: IconWidgets.phoneIcon),
                  regularExpression: RegularExpressionUtils.digitsPattern,
                  validationType: ValidationType.PNumber,
                  validationMessage: ValidationMsg.phoneIsRequired,
                  textInputType: TextInputType.phone,
                  isValidate: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    VariableUtils.otpSend,
                    style: TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                    title: VariableUtils.send,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpForgotPassword(),
                            ));
                      }
                    })
                // Container(
                //   //height: 44.h,
                //   width: 335.w,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       gradient: ColorUtils.appGrediant),
                //   child: GestureDetector(
                //       child: Center(
                //         child: Padding(
                //           padding: const EdgeInsets.symmetric(vertical: 10),
                //           child: Text(
                //             VariableUtils.send,
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontFamily: 'Poppins',
                //                 fontWeight: FontWeight.w700,
                //                 fontSize: 14.sp),
                //           ),
                //         ),
                //       ),
                //       onTap: () {
                //         if (_formKey.currentState!.validate()) {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) => OtpForgotPassword(),
                //               ));
                //         }
                //       }),
                // ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
