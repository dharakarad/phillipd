import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/utils/variable_utils.dart';
import 'package:phlipped/view/authentication/login.dart';
import 'package:phlipped/utils/color_util.dart';

import '../../commanWidgits/common_text_field.dart';
import '../../utils/no_leading_space.dart';
import '../../utils/regular_expretion_utils.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController NewPasswordController = TextEditingController();
  TextEditingController confirmnewPasswordController = TextEditingController();
  bool _currentobscureText = true;
  bool _newobscureText = true;
  bool _confirmobscureText = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                          onTap: () {
                            {
                              Navigator.pop(context);
                            }
                          },
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    VariableUtils.changePassword,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  ///..................Current password.................
                  CommonTextField(
                    textEditController: currentPasswordController,
                    hintText: VariableUtils.currentPassword,
                    pIcon: LocalAssets(imagePath: IconWidgets.password),
                    regularExpression: RegularExpressionUtils.passwordPattern,
                    validationType: ValidationType.password,
                    validationMessage: ValidationMsg.passwordInValid,
                    textInputType: TextInputType.text,
                    isValidate: true,
                    obscureValue: _currentobscureText,
                    sIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentobscureText = !_currentobscureText;
                        });
                      },
                      child: Icon(_currentobscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  ///....................New Password.............
                  CommonTextField(
                    textEditController: NewPasswordController,
                    hintText: VariableUtils.newPassword,
                    pIcon: LocalAssets(imagePath: IconWidgets.password),
                    regularExpression: RegularExpressionUtils.passwordPattern,
                    validationType: ValidationType.password,
                    validationMessage: ValidationMsg.passwordInValid,
                    textInputType: TextInputType.text,
                    isValidate: true,
                    obscureValue: _newobscureText,
                    sIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _newobscureText = !_newobscureText;
                        });
                      },
                      child: Icon(_newobscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  ///...............Confirm New PAssword..........
                  CommonTextField(
                    textEditController: confirmnewPasswordController,
                    hintText: VariableUtils.confirmNewPassword,
                    pIcon: LocalAssets(imagePath: IconWidgets.password),
                    regularExpression: RegularExpressionUtils.passwordPattern,
                    validationType: ValidationType.password,
                    validationMessage: ValidationMsg.passwordInValid,
                    textInputType: TextInputType.text,
                    isValidate: true,
                    obscureValue: _confirmobscureText,
                    sIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _confirmobscureText = !_confirmobscureText;
                        });
                      },
                      child: Icon(_confirmobscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),

                  ///.................button...............
                  CustomButton(
                    title: VariableUtils.savePassword,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        if (NewPasswordController.text ==
                            confirmnewPasswordController.text) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => login(),
                              ));
                        } else {
                          final snackbar = SnackBar(
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.red,
                              content: Text(
                                'bothPasswordMustBeSame',
                                style: TextStyle(color: Colors.black),
                              ));
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                      }
                    },
                  )
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
                  //       onTap: () {
                  //         if (_formKey.currentState!.validate()) {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                 builder: (context) => login(),
                  //               ));
                  //         } else {
                  //           final snackbar = SnackBar(
                  //               backgroundColor: Colors.green,
                  //               content: Text(
                  //                 'plese Fill All Details',
                  //                 style: TextStyle(color: Colors.black),
                  //               ));
                  //           ScaffoldMessenger.of(context)
                  //               .showSnackBar(snackbar);
                  //         }
                  //       }),
                  // ),
                ],
              )),
        ),
      ),
    );
  }
}
