import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/utils/variable_utils.dart';
import 'package:phlipped/view/bottombar.dart';
import 'package:phlipped/view/authentication/sighn_up.dart';
import 'package:phlipped/utils/color_util.dart';

import '../../commanWidgits/common_text_field.dart';
import '../../utils/no_leading_space.dart';
import '../../utils/regular_expretion_utils.dart';
import 'forgot_password.dart';
import '../home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _loginobscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 100.h),
                          LocalAssets(
                            imagePath: ImageWidgits.logo,
                            height: 24.823.h,
                            width: 140.w,
                          ),
                          Text(
                            VariableUtils.logInToYourAccount,
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          /// ...........phone...............
                          CommonTextField(
                            maxLength: 10,
                            hintText: VariableUtils.phoneNumber,
                            pIcon:
                                LocalAssets(imagePath: IconWidgets.phoneIcon),
                            regularExpression:
                                RegularExpressionUtils.digitsPattern,
                            validationType: ValidationType.PNumber,
                            validationMessage: ValidationMsg.phoneIsRequired,
                            textInputType: TextInputType.phone,
                            isValidate: true,
                          ),

                          SizedBox(
                            height: 20.h,
                          ),

                          ///.............password.............
                          CommonTextField(
                            hintText: VariableUtils.password,
                            pIcon: LocalAssets(imagePath: IconWidgets.password),
                            regularExpression:
                                RegularExpressionUtils.passwordPattern,
                            validationType: ValidationType.password,
                            validationMessage: ValidationMsg.passwordInValid,
                            textInputType: TextInputType.text,
                            isValidate: true,
                            obscureValue: _loginobscureText,
                            sIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _loginobscureText = !_loginobscureText;
                                });
                              },
                              child: Icon(_loginobscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),

                          ///.............button...........
                          CustomButton(
                              title: VariableUtils.login,
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CommonBottomBar(),
                                      ));
                                } else {
                                  final snackbar = SnackBar(
                                      backgroundColor: Colors.green,
                                      content: Text(
                                        'plese Fill All Details',
                                        style: TextStyle(color: Colors.black),
                                      ));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackbar);
                                }
                              }),

                          // Container(
                          //   //height: 44.h,
                          //   width: 335.w,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(8),
                          //       gradient: ColorUtils.appGrediant),
                          //   child: GestureDetector(
                          //       child: Center(
                          //         child: Padding(
                          //           padding: const EdgeInsets.symmetric(
                          //               vertical: 10),
                          //           child: Text(
                          //             VariableUtils.login,
                          //             style: TextStyle(
                          //                 color: Colors.white,
                          //                 fontFamily: 'Poppins',
                          //                 fontWeight: FontWeight.w700,
                          //                 fontSize: 14.sp),
                          //           ),
                          //         ),
                          //       ),
                          // ),
                          // ),
                          Align(
                              alignment: Alignment.topRight,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword(),
                                        ));
                                  },
                                  child: const Text(
                                    VariableUtils.forgotPassword,
                                    style: TextStyle(
                                        color: ColorUtils.login,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w400),
                                  ))),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                VariableUtils.donTHaveAnAccount,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUp(),
                                        ));
                                  },
                                  child: const Text(
                                    VariableUtils.signup,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff0072BB)),
                                  )),
                            ],
                          ),

                          const Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: ColorUtils.grey,
                                ),
                              ),
                              Text('Or continue with'),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: ColorUtils.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 36.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: ColorUtils.grey),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      LocalAssets(
                                          imagePath: IconWidgets.facebook),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(VariableUtils.facebook)
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  height: 36.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: ColorUtils.grey),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      LocalAssets(
                                          imagePath: IconWidgets.google),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(VariableUtils.google)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }
}
