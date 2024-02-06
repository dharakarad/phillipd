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

import '../../utils/assets/common_assets.dart';
import '../../utils/no_leading_space.dart';
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
                      LocalAssets(
                        imagePath: IconWidgets.back,
                      ),
                      SizedBox(
                        width: 70.w,
                      ),
                      InkWell(
                          onTap: () {
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => login(),
                                  ));
                            }
                          },
                          child: LocalAssets(
                            imagePath: ImageWidgits.logo,
                            height: 24.823.h,
                            width: 140.w,
                          )),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      NoLeadingSpaceFormatter(),
                      FilteringTextInputFormatter.deny(
                        RegExp(r'^0+'),
                      ),
                    ],
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'field is empty';
                      } else if (!RegExp(
                              r"^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$")
                          .hasMatch(value)) {
                        return ' Entar valid Mobile NUmber';
                      }
                      return null;
                    },
                    controller: phoneController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF2F3F2),
                        border: InputBorder.none,
                        errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(8)),

                        // border: InputBorder.none,
                        prefixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: LocalAssets(
                              imagePath: IconWidgets.phoneIcon,
                            )),
                        hintText: VariableUtils.phoneNumber,
                        hintStyle: const TextStyle(
                          color: Color(0xff1616164d),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
