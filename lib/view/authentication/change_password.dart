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

import '../../utils/no_leading_space.dart';

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
                        } else if (!RegExp(
                                r"(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$")
                            .hasMatch(value)) {
                          return 'Entar valid Password';
                        }
                      },
                      controller: currentPasswordController,
                      obscureText: _currentobscureText,
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
                                _currentobscureText = !_currentobscureText;
                              });
                            },
                            child: Icon(_currentobscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),

                          // border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: LocalAssets(imagePath: IconWidgets.password,)
                          ),
                          hintText: VariableUtils.currentPassword,
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

                  ///....................New Password.............
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
                        } else if (!RegExp(
                                r"(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$")
                            .hasMatch(value)) {
                          return 'Entar valid Password';
                        }
                      },
                      controller: NewPasswordController,
                      obscureText: _newobscureText,
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
                                _newobscureText = !_newobscureText;
                              });
                            },
                            child: Icon(_newobscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),

                          // border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child:LocalAssets(imagePath: IconWidgets.password,)
                          ),
                          hintText: VariableUtils.newPassword,
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

                  ///...............Confirm New PAssword..........
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
                        } else if (!RegExp(
                                r"(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$")
                            .hasMatch(value)) {
                          return 'Entar valid Password';
                        }
                      },
                      controller: confirmnewPasswordController,
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
                            child: LocalAssets(imagePath: IconWidgets.password,)
                          ),
                          hintText: VariableUtils.confirmNewPassword,
                          hintStyle: const TextStyle(
                            color: Color(0xff1616164d),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          )),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
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
