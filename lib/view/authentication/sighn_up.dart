import 'package:phlipped/commanWidgits/common_text_field.dart';
import 'package:phlipped/commanWidgits/custom_btn.dart';
import 'package:phlipped/utils/assets/common_assets.dart';
import 'package:phlipped/utils/assets/icons.dart';
import 'package:phlipped/utils/assets/images.dart';
import 'package:phlipped/utils/variable_utils.dart';

import '../../service/import_file.dart';
import '../../utils/no_leading_space.dart';
import '../../utils/regular_expretion_utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passText = true;

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
                      VariableUtils.createAccount,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    ///..............name.................
                    CommonTextField(
                      hintText: VariableUtils.fullName,
                      pIcon: LocalAssets(imagePath: IconWidgets.fullName),
                      validationType: ValidationType.name,
                      validationMessage: ValidationMsg.fullname,
                      textInputType: TextInputType.text,
                      isValidate: true,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 15, right: 15),
                    //   child: TextFormField(
                    //     textInputAction: TextInputAction.next,
                    //     keyboardType: TextInputType.text,
                    //     inputFormatters: [
                    //       NoLeadingSpaceFormatter(),
                    //       FilteringTextInputFormatter.deny(
                    //         RegExp(r'^0+'),
                    //       ),
                    //     ],
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return 'field is empty';
                    //       }
                    //       return null;
                    //     },
                    //     controller: nameController,
                    //     decoration: InputDecoration(
                    //         filled: true,
                    //         fillColor: Color(0xFFF2F3F2),
                    //         border: InputBorder.none,
                    //         errorBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(color: Colors.red),
                    //             borderRadius: BorderRadius.circular(8)),
                    //         prefixIcon: Padding(
                    //           padding: const EdgeInsets.all(12),
                    //           child: LocalAssets(
                    //             imagePath: IconWidgets.fullName,
                    //           ),
                    //         ),
                    //         hintText: VariableUtils.fullName,
                    //         hintStyle: const TextStyle(
                    //           color: Color(0xff1616164d),
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w500,
                    //         )),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20.h,
                    ),

                    ///...........Email.........
                    CommonTextField(
                      hintText: 'Email',
                      pIcon: LocalAssets(imagePath: IconWidgets.email),
                      regularExpression:
                          RegularExpressionUtils.emailValidationPattern,
                      validationType: ValidationType.email,
                      validationMessage: ValidationMsg.emailIsRequired,
                      textInputType: TextInputType.emailAddress,
                      isValidate: true,
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 15, right: 15),
                    //   child: TextFormField(
                    //     textInputAction: TextInputAction.next,
                    //     keyboardType: TextInputType.emailAddress,
                    //     inputFormatters: [
                    //       NoLeadingSpaceFormatter(),
                    //       FilteringTextInputFormatter.deny(
                    //         RegExp(r'^0+'),
                    //       ),
                    //     ],
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return 'field is empty';
                    //       } else if (!RegExp(
                    //               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    //           .hasMatch(value)) {
                    //         return ' Not Currect EmailID';
                    //       }
                    //     },
                    //     controller: EmailController,
                    //     decoration: InputDecoration(
                    //         filled: true,
                    //         fillColor: Color(0xFFF2F3F2),
                    //         border: InputBorder.none,
                    //         errorBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(color: Colors.red),
                    //             borderRadius: BorderRadius.circular(8)),
                    //
                    //         // border: InputBorder.none,
                    //         prefixIcon: Padding(
                    //           padding: const EdgeInsets.all(12),
                    //           child: LocalAssets(
                    //             imagePath: IconWidgets.email,
                    //           ),
                    //         ),
                    //         hintText: VariableUtils.email,
                    //         hintStyle: const TextStyle(
                    //           color: Color(0xff1616164d),
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w500,
                    //         )),
                    //   ),
                    // ),

                    SizedBox(
                      height: 20.h,
                    ),

                    /// ...........phone...............
                    CommonTextField(
                      textEditController: phoneController,
                      maxLength: 10,
                      hintText: VariableUtils.phoneNumber,
                      pIcon: LocalAssets(imagePath: IconWidgets.phoneIcon),
                      regularExpression: RegularExpressionUtils.phonRegExp,
                      validationType: ValidationType.phoNumber,
                      validationMessage: ValidationMsg.phoneIsRequired,
                      textInputType: TextInputType.phone,
                      isValidate: true,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 15, right: 15),
                    //   child: TextFormField(
                    //     textInputAction: TextInputAction.next,
                    //     keyboardType: TextInputType.phone,
                    //     inputFormatters: [
                    //       NoLeadingSpaceFormatter(),
                    //       FilteringTextInputFormatter.deny(
                    //         RegExp(r'^0+'),
                    //       ),
                    //     ],
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return 'field is empty';
                    //       } else if (!RegExp(
                    //               r"^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$")
                    //           .hasMatch(value)) {
                    //         return ' Entar valid Mobile NUmber';
                    //       }
                    //       return null;
                    //     },
                    //     controller: phoneController,
                    //     decoration: InputDecoration(
                    //         filled: true,
                    //         fillColor: Color(0xFFF2F3F2),
                    //         border: InputBorder.none,
                    //         errorBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(color: Colors.red),
                    //             borderRadius: BorderRadius.circular(8)),
                    //
                    //         // border: InputBorder.none,
                    //         prefixIcon: Padding(
                    //           padding: const EdgeInsets.all(12),
                    //           child: LocalAssets(
                    //             imagePath: IconWidgets.phoneIcon,
                    //           ),
                    //         ),
                    //         hintText: 'Phone',
                    //         hintStyle: const TextStyle(
                    //           color: Color(0xff1616164d),
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w500,
                    //         )),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20.h,
                    ),

                    ///.............password.............
                    CommonTextField(
                      hintText: VariableUtils.password,
                      pIcon: LocalAssets(imagePath: IconWidgets.password),
                      regularExpression: RegularExpressionUtils.passwordPattern,
                      validationType: ValidationType.password,
                      validationMessage: ValidationMsg.passwordInValid,
                      textInputType: TextInputType.text,
                      isValidate: true,
                      obscureValue: passText,
                      sIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            passText = !passText;
                          });
                        },
                        child: Icon(
                            passText ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 15, right: 15),
                    //   child: TextFormField(
                    //     textInputAction: TextInputAction.next,
                    //     keyboardType: TextInputType.text,
                    //     inputFormatters: [
                    //       // FilteringTextInputFormatter.allow(RegExp(
                    //       //     r"a-")),
                    //       NoLeadingSpaceFormatter(),
                    //       FilteringTextInputFormatter.deny(
                    //         RegExp(r'^0+'),
                    //       ),
                    //     ],
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return 'field is empty';
                    //       } else if (!RegExp(
                    //               r"(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$")
                    //           .hasMatch(value)) {
                    //         return 'Entar valid Password';
                    //       }
                    //     },
                    //     controller: passwordController,
                    //     obscureText: _obscureText,
                    //     decoration: InputDecoration(
                    //         filled: true,
                    //         fillColor: Color(0xFFF2F3F2),
                    //         border: InputBorder.none,
                    //         errorBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(color: Colors.red),
                    //             borderRadius: BorderRadius.circular(8)),
                    //         suffixIcon: GestureDetector(
                    //           onTap: () {
                    //             setState(() {
                    //               _obscureText = !_obscureText;
                    //             });
                    //           },
                    //           child: Icon(_obscureText
                    //               ? Icons.visibility_off
                    //               : Icons.visibility),
                    //         ),
                    //
                    //         // border: InputBorder.none,
                    //         prefixIcon: Padding(
                    //           padding: const EdgeInsets.all(12),
                    //           child: LocalAssets(
                    //             imagePath: IconWidgets.password,
                    //           ),
                    //         ),
                    //         hintText: 'Password',
                    //         hintStyle: const TextStyle(
                    //           color: Color(0xff1616164d),
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w500,
                    //         )),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 30,
                    ),

                    ///.............button...........
                    CustomButton(
                        title: 'Sign Up',
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
                    //           padding: const EdgeInsets.symmetric(vertical: 10),
                    //           child: Text(
                    //             'Sign Up',
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () {
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => login(),
                                    ));
                              }
                            },
                            child: Text(
                              'Login ',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  color: Color(0xff0072BB)),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
