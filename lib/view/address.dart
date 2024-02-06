import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/view/listing.dart';
import 'package:phlipped/utils/color_util.dart';

import '../utils/no_leading_space.dart';
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
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Street',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      )),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
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
                      return null;
                    },
                    decoration: InputDecoration(
                      hintMaxLines: 1,
                      filled: true,
                      fillColor: Color(0xFFF2F3F2),
                      border: InputBorder.none,
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),

                ///................city..............
                SizedBox(
                  height: 15.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'City',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      )),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
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
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF2F3F2),
                      border: InputBorder.none,
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
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
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'State',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                )),
                          ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
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
                                return null;
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF2F3F2),
                                border: InputBorder.none,
                                errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170.w,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'PinCode',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
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
                                } else if (!RegExp(r"^[1-9][0-9]{5}$")
                                    .hasMatch(value)) {
                                  return 'Entar 6 digit pincode';
                                }
                              },
                              controller: pincodeController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF2F3F2),
                                border: InputBorder.none,
                                errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
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
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Country',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      )),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
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
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF2F3F2),
                      border: InputBorder.none,
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),

                ///.........button.............
                CustomButton(title: 'Save Address', onTap: () {
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
