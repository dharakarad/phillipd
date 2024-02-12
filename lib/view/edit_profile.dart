import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phlipped/commanWidgits/Custom_text.dart';
import 'package:phlipped/view/account.dart';
import 'package:phlipped/utils/color_util.dart';

import '../commanWidgits/common_text_field.dart';
import '../commanWidgits/common_tital_field.dart';
import '../commanWidgits/custom_btn.dart';
import '../utils/assets/common_assets.dart';
import '../utils/assets/icons.dart';
import '../utils/no_leading_space.dart';
import '../utils/regular_expretion_utils.dart';
import '../utils/variable_utils.dart';
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
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 30.sp),
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
                CommonTextField(
                  title: 'Full Name',
                  validationType: ValidationType.name,
                  validationMessage: ValidationMsg.fullname,
                  textInputType: TextInputType.text,
                  isValidate: true,
                ),

                ///,,,,,,,,,,,,phonnumber.....................
                SizedBox(
                  height: 15.h,
                ),
                CommonTextField(
                  title: 'Phone Number',
                  textEditController: phoneController,
                  maxLength: 10,
                  regularExpression: RegularExpressionUtils.phonRegExp,
                  validationType: ValidationType.phoNumber,
                  validationMessage: ValidationMsg.phoneIsRequired,
                  textInputType: TextInputType.phone,
                  isValidate: true,
                ),

                ///..........Email.................
                SizedBox(
                  height: 15.h,
                ),

                CommonTextField(
                  title: "Email",
                  regularExpression:
                      RegularExpressionUtils.emailValidationPattern,
                  validationType: ValidationType.email,
                  validationMessage: ValidationMsg.emailIsRequired,
                  textInputType: TextInputType.emailAddress,
                  isValidate: true,
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
