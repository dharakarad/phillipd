import 'package:phlipped/utils/variable_utils.dart';

/// VALIDATION MESSAGE WITH
class ValidationMsg {
  static String passisRequired = "Password is required";
  static String isRequired = 'is required';
  static String phoneIsRequired = "Phone Number is required";
  static String phoneInvalid = "invalide phonNumber";
  static String emailIsRequired = "Email is required";
  static String somethingWentToWrong = "Something went Wrong";
  static String pleaseEnterValidEmail = "Please Enter Valid Email";
  static String passwordLength = 'Must Be More Than 6 Char';
  static String mobileNoLength = 'Phone number must be 10 Digit';
  static String mobileNoLengthMoreThan10 =
      'Phone number cannot be more than 10 character';
  static String passwordInValid = 'Password Invalid';
  static String invalidURl = 'Invalid URL';
  static String nameInvalid =
      'Invalid Full Name format. Use first name and last name.';
  static String fullname = 'Full Name is required';
  static String addressisRequired = 'Address is required';
  static String addressInvalid =
      'Invalid address format. Use street number and name.';
  static String addressLength = 'Address is too long (max 100 characters)';
  static String pincodelength = 'Pincode must be 6 Digit';
  static String pincodeLengthMoreThan6 =
      'Pincode cannot be more than 6 character';
  static String pincodeisRequired = 'Pincode is required';
}

class RegularExpressionUtils {
  ///IN USED..
  static String emailPattern = r"[a-zA-Z0-9$_@.-]";
  static String alphabetSpacePattern = "[a-zA-ZÆØÅæøå_ ]";
  static String passwordPattern = r"[a-zA-Z0-9#!@$&*]";
  static String alphabetDigitSpacePattern = r"[a-zA-Z0-9#&$%_@.'?+ ]";
  static String alphabetDigitsNotSpacePattern = r"[a-zA-Z0-9]";
  static String alphabetDigitsSpacePlusPattern = r"[a-zA-ZÆØÅæøå0-9+ ]";
  static String digitsPattern = r"[0-9]";
  static String digitsDotsPattern = r"[0-9.]";
  static String digitsDesPattern = r"[0-9-]";
  static String pricePattern = r'^\d+\.?\d*';
  static String nameRegExp = r"^[A-Za-zÆØÅæøå]+$";
  static String phonRegExp = r'^(?:[+0]9)?[0-9]{10}$;';
  static String pincodepattern = r'^\d{6}$';

  /// Validation Expression Pattern
  static String emailValidationPattern =
      r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$";
}

/// VALIDATION METHOD
class ValidationMethod {
  /// EMAIL VALIDATION METHOD
  static String? validateEmail(value) {
    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!"
        r"#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  /// MOBILE VALIDATION METHOD
  static String? validatePhoneNo(value) {
    bool regex = RegExp(RegularExpressionUtils.phonRegExp).hasMatch(value);
    if (value == null) {
      return 'Enter phone number';
    } else if (regex == false) {
      return ValidationMsg.phoneInvalid;
    }
  }

  ///PINCODE VALIDATION METHOD
  static String? validateZipCode(value) {
    bool regex = RegExp(RegularExpressionUtils.pincodepattern).hasMatch(value);
    if (value.isEmpty) {
      return ValidationMsg.pincodeisRequired;
    } else if (regex == false) {
      return 'Invalid Pincord';
    }
    return null; // Return null if the input is valid
  }

  /// PASSWORD VALIDATION METHOD
  static String? validatePassword(value) {
    if (value == null) {
      return ValidationMsg.passisRequired;
    } else if (value.length < 8) {
      return VariableUtils.minimumCharterHint;
    } else if (RegExp(r'(?=.*[A-Z])').hasMatch(value) == false) {
      return VariableUtils.haveOneUppercase;
    } else if (RegExp(r'(?=.*[a-z])').hasMatch(value) == false) {
      return VariableUtils.haveOneLowercase;
    } else if (RegExp(r'(?=.*?[0-9])').hasMatch(value) == false) {
      return VariableUtils.haveOneDigit;
    } else if (RegExp(r'(?=.*?[!@#\$&*~])').hasMatch(value) == false) {
      return VariableUtils.haveOneSpecialCharacter;
    }
    return null;
  }

  /// IS REQUIRED VALIDATION METHOD  (COMMON METHOD)
  static String? validateIsRequired(value) {
    if ((value as String).isEmpty) {
      return ValidationMsg.isRequired;
    }
    return null;
  }
}
