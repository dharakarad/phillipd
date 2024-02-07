import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/view/listing.dart';
import 'package:phlipped/utils/color_util.dart';

import '../commanWidgits/common_text_field.dart';
import '../utils/no_leading_space.dart';
import '../utils/regular_expretion_utils.dart';
import 'account.dart';
import 'authentication/change_password.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController pincodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
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
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          'assets/icon/ic_back.svg',
                        ),
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      const Text(
                        'Address',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),

                ///...................Street...............
                SizedBox(
                  height: 15.h,
                ),
                CommonTextField(
                  title: 'Street',
                  validationType: ValidationType.name,
                  validationMessage: ValidationMsg.isRequired,
                  textInputType: TextInputType.text,
                  isValidate: true,
                ),

                ///................city..............
                SizedBox(
                  height: 15.h,
                ),
                CommonTextField(
                  title: 'City',
                  validationType: ValidationType.name,
                  validationMessage: ValidationMsg.isRequired,
                  textInputType: TextInputType.text,
                  isValidate: true,
                ),

                ///..............State.................
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CommonTextField(
                            title: 'State',
                            validationType: ValidationType.name,
                            validationMessage: ValidationMsg.isRequired,
                            textInputType: TextInputType.text,
                            isValidate: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170.w,
                      child: Column(
                        children: [
                          CommonTextField(
                            title: 'PinCode',
                            regularExpression:
                                RegularExpressionUtils.pincodepattern,
                            validationType: ValidationType.name,
                            validationMessage: ValidationMsg.isRequired,
                            textInputType: TextInputType.text,
                            isValidate: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                ///.........country....................
                SizedBox(
                  height: 15.h,
                ),
                CommonTextField(
                  title: 'Country',
                  validationType: ValidationType.name,
                  validationMessage: ValidationMsg.isRequired,
                  textInputType: TextInputType.text,
                  isValidate: true,
                ),
                SizedBox(
                  height: 15.h,
                ),

                ///.........button.............
                CustomButton(
                    title: 'Save Address',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Account(),
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
                //             'Save Address',
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontFamily: 'Poppins',
                //                 fontWeight: FontWeight.w700,
                //                 fontSize: 14.sp),
                //           ),
                //         ),
                //       ),
                //      ),
                // ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
