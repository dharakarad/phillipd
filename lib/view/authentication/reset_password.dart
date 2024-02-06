import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/utils/color_util.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/utils/variable_utils.dart';
import 'package:phlipped/view/home.dart';

import '../../utils/no_leading_space.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController confirmPassController = TextEditingController();
  TextEditingController NewpasswordController = TextEditingController();
  bool _obscureText = true;
  bool _confirmobscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                    VariableUtils.resetPassword,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      VariableUtils.text,
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

                  /// ..................new password..............
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        NoLeadingSpaceFormatter(),
                        FilteringTextInputFormatter.deny(
                          RegExp(r'^0+'),
                        ),
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'field is empty';
                        }
                      },
                      controller: NewpasswordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF2F3F2),
                          border: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(8)),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),

                          // border: InputBorder.none,
                          prefixIcon: Padding(
                              padding: const EdgeInsets.all(12),
                              child: LocalAssets(
                                imagePath: IconWidgets.password,
                              )),
                          hintText: VariableUtils.newPassword,
                          hintStyle: const TextStyle(
                            color: Color(0xff1616164d),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  /// ..................Confirm password..............
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        NoLeadingSpaceFormatter(),
                        FilteringTextInputFormatter.deny(
                          RegExp(r'^0+'),
                        ),
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' field empty';
                        }
                        if (value != NewpasswordController.text) {
                          return 'not match';
                        }
                      },
                      controller: confirmPassController,
                      obscureText: _confirmobscureText,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF2F3F2),
                          border: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(8)),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _confirmobscureText = !_confirmobscureText;
                              });
                            },
                            child: Icon(_confirmobscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),

                          // border: InputBorder.none,
                          prefixIcon: Padding(
                              padding: const EdgeInsets.all(12),
                              child:
                                  LocalAssets(imagePath: IconWidgets.password)),
                          hintText: VariableUtils.confirmPassword,
                          hintStyle: const TextStyle(
                            color: Color(0xff1616164d),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  ///.................button...............
                  CustomButton(
                      title: 'Save Password',
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => home(),
                              ));
                        } else {
                          final snackbar = SnackBar(
                              backgroundColor: Colors.green,
                              content: Text(
                                'plese Fill All Details',
                                style: TextStyle(color: Colors.black),
                              ));
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
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
                  //             'Save Password',
                  //             style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontFamily: 'Poppins',
                  //                 fontWeight: FontWeight.w700,
                  //                 fontSize: 14.sp),
                  //           ),
                  //         ),
                  //       ),
                  //       ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
