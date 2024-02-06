import 'package:phlipped/utils/variable_utils.dart';

/// REGULAR EXPRESSION
class RegularExpression {
  /// TextField Enter Pattern Expression
  // static String emailPattern = r"([a-zA-Z0-9_@gmail.com])";
  static String emailAddressValidationPattern = r"[a-zA-Z0-9$_@.-]";
  static String passwordPattern = r"[a-zA-Z0-9#!_@$%^&*-]";
  static String alphabetPattern = r"[a-zA-Z]";
  static String alphabetSpacePattern = r"[a-zA-Z. ]";
  static String alphabetDigitSpacePattern = r"[a-zA-Z0-9#&$%_@.'?+ ]";
  static String alphabetDigitSpacePattern_ = r"[a-zA-Z0-9#&$%_@.'?+/ ]";
  static String alphabetDigitsPattern = r"[a-zA-Z0-9 ]";
  static String alphabetWithoutSpaceDigitsPattern = r"[a-zA-Z0-9]";
  static String alphabetDigitsSpacePlusPattern = r"[a-zA-Z0-9+ ]";
  static String alphabetDigitsSpecialSymbolPattern = r"[a-zA-Z0-9#&$%_@., ]";
  static String alphabetDigitsDashPattern = r"[a-zA-Z0-9- ]";
  static String addressValidationPattern = r'^\d+\s[A-Za-z\s]+';
  static String digitsPattern = "[0-9]";
  static String pricePattern = r'^\d+\.?\d*';
  static String leadingZero = r'^[1-9][0-9]*$';
  static String ifscCodePattern = r'^[A-Z]{4}0[A-Z0-9]{6}$';
  static String alphabetWithSpacePattern = r'^[A-Za-z]+[A-Za-z ]*$';
  static String pincodepattern = r'^\d{6}$';
  static String fullNamepattern = r'^[a-zA-Z]+ [a-zA-Z]+$';
  static String phonpattern = r'^(?:[+0]9)?[0-9]{10}$';

  /// Validation Expression Pattern
  static String emailValidationPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static String passwordValidPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  static String linkValidationPattern =
      r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";
}

/// ------------------------------------------------------------------- ///
/// VALIDATION MESSAGE WITH
class ValidationMsg {
  static String passisRequired = "Password is required";
  static String isRequired = 'is required';
  static String phoneIsRequired = "Phone Number is required";
  static String emailIsRequired = "Email is required";
  static String somethingWentToWrong = "Something went Wrong";
  static String pleaseEnterValidEmail = "Please Enter Valid Email";
  static String passwordLength = 'Must Be More Than 6 Char';
  static String mobileNoLength = 'Phone number must be 10 Digit';
  static String mobileNoLengthMoreThan10 =
      'Phone number cannot be more than 10 character';
  static String passwordInValid = 'Password Invalid';
  static String phonnumInValid = 'PhonNumber Invalid';
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

/// ------------------------------------------------------------------- ///
/// VALIDATION METHOD
class ValidationMethod {
  ///FULLNAME VALIDATION METHOD
  static String? validateFullName(value) {
    bool regex3 =
        RegExp(RegularExpression.emailAddressValidationPattern).hasMatch(value);
    if (value.isEmpty) {
      return ValidationMsg.fullname;
    } else if (regex3 == false) {
      return ValidationMsg.nameInvalid;
    }

    return null;
  }

  /// EMAIL VALIDATION METHOD
  static String? validateEmail(value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  /// PASSWORD VALIDATION METHOD
  static String? validatePassword(value) {
    RegExp regex = RegExp(RegularExpression.passwordValidPattern);
    if ((value as String).isEmpty) {
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

  // ///CONFIRM PASSWORD VALIDATION METHOD
  // static String? validateConfirmPassword(value) {
  //   RegExp regex = RegExp(RegularExpression.passwordValidPattern);
  //   if ((value as String).isEmpty) {
  //     return ValidationMsg.isRequired;
  //   } else if (value.length <= 6) {
  //     return ValidationMsg.passwordLength;
  //   } else if (regex == false) {
  //     return ValidationMsg.passwordInValid;
  //   }
  //
  //   return null;
  // }

  /// MOBILE VALIDATION METHOD

  static String? validatePhoneNo(value) {
    RegExp regExp = RegExp(RegularExpression.phonpattern);
    if ((value as String).isEmpty) {
      return ValidationMsg.phoneIsRequired;
    } else if (regExp.hasMatch(value) == false) {
      return ValidationMsg.phonnumInValid;
    }

    return null;
  }

  ///PINCODE VALIDATION METHOD
  static String? validateZipCode(value) {
    if (value.isEmpty) {
      return ValidationMsg.pincodeisRequired;
    } else if (value.length != 6) {
      return ValidationMsg.pincodelength;
    } else if (value.length > 6) {
      return ValidationMsg.pincodeLengthMoreThan6;
    }
    return null; // Return null if the input is valid
  }

  ///ADDRESS VALIDATIONMETHOD
  static String? validateAddress(value) {
    RegExp regex2 = RegExp(RegularExpression.addressValidationPattern);
    if (value.isEmpty) {
      return ValidationMsg.addressisRequired;
    } else if (value.length > 100) {
      return ValidationMsg.addressLength;
    } else if (regex2 == false) {
      return ValidationMsg.addressInvalid;
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
