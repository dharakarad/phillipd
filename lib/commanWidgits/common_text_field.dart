import 'package:phlipped/commanWidgits/Custom_text.dart';

import '../service/import_file.dart';
import '../utils/assets/common_assets.dart';
import '../utils/assets/icons.dart';
import '../utils/no_leading_space.dart';

import '../utils/regular_expretion_utils.dart';
import '../utils/variable_utils.dart';

enum ValidationType {
  password,
  email,
  phoNumber,
  name,
  none,
  address,
  city,
  pinCode,
  state,
  newPassword,
  confirmPassword,
  currantPassword,
  confirmNewPassword,
  PNumber
}

typedef OnChangeString = void Function(String value);

class CommonTextField extends StatefulWidget {
  final String? titleText;
  final String? initialValue;
  final bool? isValidate;
  final bool? readOnly;
  final TextInputType? textInputType;
  final ValidationType? validationType;
  final String? regularExpression;
  final int? inputLength;
  final String? hintText;
  final String? title;
  final String? validationMessage;
  final TextEditingController? textEditController;
  final int? maxLine;
  final int? maxLength;
  Widget? sIcon;
  Widget? pIcon;
  final bool? obscureValue;
  final bool? withOutIcon;
  final double? containerHeight;
  final Color? containerBgColor;
  final TextStyle? hintStyle;
  final OnChangeString? onChange;
  final bool? isAddress;
  final TextCapitalization? textCapitalization;
  final bool? useRegularExpression;
  final bool? prefix;
  final Color? borderColor;
  final TextStyle? style;
  final String? prefixText;
  final Widget? label;
  final Widget? localAssets;
  final bool? obscureText;
  final bool? passText;

  CommonTextField(
      {super.key,
      this.regularExpression = '',
      this.isValidate,
      this.textEditController,
      this.textInputType,
      this.validationType = ValidationType.none,
      this.inputLength,
      this.readOnly = false,
      this.hintText,
      this.validationMessage,
      this.maxLine,
      this.sIcon,
      this.onChange,
      this.initialValue,
      this.obscureValue,
      this.withOutIcon,
      this.containerHeight,
      this.containerBgColor,
      this.hintStyle,
      this.isAddress,
      this.textCapitalization,
      this.useRegularExpression,
      this.prefix,
      this.borderColor,
      this.style,
      this.prefixText,
      this.pIcon,
      this.label,
      this.titleText,
      this.localAssets,
      this.obscureText,
      this.passText,
      this.maxLength,
      this.title});

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  Widget? pIcon;

  /// PLEASE IMPORT GETX PACKAGE
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              widget.title ?? "",
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              maxLength: widget.maxLength ?? null,
              inputFormatters: [
                NoLeadingSpaceFormatter(),
                FilteringTextInputFormatter.deny(
                  RegExp(r'^0+'),
                ),
              ],
              obscureText: widget.validationType == ValidationType.password
                  ? widget.obscureValue ?? false
                  : false,
              validator: (value) {
                return widget.isValidate == false
                    ? null
                    : widget.validationType == ValidationType.email
                        ? ValidationMethod.validateEmail(value)
                        : widget.validationType == ValidationType.password
                            ? ValidationMethod.validatePassword(value)
                            : widget.validationType == ValidationType.PNumber
                                ? ValidationMethod.validatePhoneNo(value)
                                : widget.validationType ==
                                        ValidationType.pinCode
                                    ? ValidationMethod.validateZipCode(value)
                                    : widget.validationType ==
                                            ValidationType.none
                                        ? ValidationMethod.validateIsRequired(
                                            value)
                                        : ValidationMethod.validateIsRequired(
                                            value);
              },
              controller: widget.textEditController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F3F2),
                  border: InputBorder.none,
                  errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8)),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: widget.pIcon,
                  ),
                  suffixIcon: widget.sIcon,
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(
                    color: Color(0xff1616164d),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ],
        ));
  }
}

class AssetsUtils {
  static String poppins = "Poppins";
  static String playfairdisplay = "PlayfairDisplay";
}
