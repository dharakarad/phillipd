// import '../service/import_file.dart';
// import '../utils/assets/common_assets.dart';
// import '../utils/assets/icons.dart';
// import '../utils/no_leading_space.dart';
//
// import '../utils/regular_expretion_utils.dart';
// import '../utils/variable_utils.dart';
//
// typedef OnChangeString = void Function(String value);
//
// class CommonTitalField extends StatefulWidget {
//   final String? titleText;
//   final String? initialValue;
//   final bool? isValidate;
//   final bool? readOnly;
//   final TextInputType? textInputType;
//   final String? Text;
//
//   final String? regularExpression;
//   final int? inputLength;
//   final String? hintText;
//   final String? validationMessage;
//   final TextEditingController? textEditController;
//   final int? maxLine;
//   final int? maxLength;
//   Widget? sIcon;
//   Widget? pIcon;
//   final bool? obscureValue;
//   final bool? withOutIcon;
//   final double? containerHeight;
//   final Color? containerBgColor;
//   final TextStyle? hintStyle;
//   final OnChangeString? onChange;
//   final bool? isAddress;
//   final TextCapitalization? textCapitalization;
//   final bool? useRegularExpression;
//   final bool? prefix;
//   final Color? borderColor;
//   final TextStyle? style;
//   final String? prefixText;
//   final Widget? label;
//   final Widget? localAssets;
//   final bool? obscureText;
//   final bool? passText;
//
//   CommonTitalField({
//     super.key,
//     this.regularExpression = '',
//     this.isValidate,
//     this.textEditController,
//     this.textInputType,
//     this.Text,
//     this.inputLength,
//     this.readOnly = false,
//     this.hintText,
//     this.validationMessage,
//     this.maxLine,
//     this.sIcon,
//     this.onChange,
//     this.initialValue,
//     this.obscureValue,
//     this.withOutIcon,
//     this.containerHeight,
//     this.containerBgColor,
//     this.hintStyle,
//     this.isAddress,
//     this.textCapitalization,
//     this.useRegularExpression,
//     this.prefix,
//     this.borderColor,
//     this.style,
//     this.prefixText,
//     this.pIcon,
//     this.label,
//     this.titleText,
//     this.localAssets,
//     this.obscureText,
//     this.passText,
//     this.maxLength,
//   });
//
//   @override
//   State<CommonTitalField> createState() => _CommonTitalFieldState();
// }
//
// class _CommonTitalFieldState extends State<CommonTitalField> {
//   Widget? pIcon;
//
//   /// PLEASE IMPORT GETX PACKAGE
//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.only(left: 15),
//       child: Align(
//           alignment: Alignment.topLeft,
//           child: Text(
//             'Email',
//             style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w600,
//                 fontSize: 17),
//           )),
//     );
//   }
// }
