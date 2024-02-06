import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/view/account.dart';
import 'package:phlipped/utils/color_util.dart';

import '../commanWidgits/custom_btn.dart';
import '../utils/no_leading_space.dart';
import 'authentication/change_password.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Column(children: [
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
                          {
                            Navigator.pop(context);
                          }
                        },
                        child: SvgPicture.asset(
                          'assets/icon/ic_back.svg',
                        ),
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage(('assets/images/Ellipse 2.png')),
                    ),
                    Positioned(
                        bottom: 0,
                        right: -26,
                        child: RawMaterialButton(
                          onPressed: () {},
                          fillColor: const Color(0xFFF5F6F9),
                          padding: const EdgeInsets.all(5.0),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),

                ///.............fullname.............
                SizedBox(
                  height: 15.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Full Name',
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
                    controller: nameController,
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

                ///,,,,,,,,,,,,phonnumber.....................
                SizedBox(
                  height: 15.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Phone Nunber',
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
                    ),
                  ),
                ),

                ///..........Email.................
                SizedBox(
                  height: 15.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
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
                    keyboardType: TextInputType.emailAddress,
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
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return ' Not Currect EmailID';
                      }
                    },
                    controller: EmailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF2F3F2),
                      border: InputBorder.none,
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(8)),

                      // border: InputBorder.none,
                    ),
                  ),
                ),

                ///...........Button.............
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                    title: 'Save Details',
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
                //             'Save Details',
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontFamily: 'Poppins',
                //                 fontWeight: FontWeight.w700,
                //                 fontSize: 14.sp),
                //           ),
                //         ),
                //       ),
                //    ),
                // ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
