import 'dart:math';

class Validators {
  static bool isStringNotEmpty(String? value, [bool isRequired = true]) {
    if (isRequired) {
      if ((value == null) || (value.isEmpty)) {
        return false;
      }
    }
    return true;
  }

  static bool isValidCreditCardNumber(String? value) {
    if (isStringNotEmpty(value)) {
      if (value!.length < 16) {
        return false;
      }

      int sum = 0;
      int length = value.length;
      for (var i = 0; i < length; i++) {
        int digit = int.parse(value[length - i - 1]);
        if (i % 2 == 1) {
          digit *= 2;
        }
        sum += digit > 9 ? (digit - 9) : digit;
      }
      if (sum % 10 == 0) {
        return true;
      }
    }
    return false;
  }

  static bool isVisaNumber(String? value) {
    if (isValidCreditCardNumber(value)) {
      if (value!.startsWith(RegExp(r'[4]'))) {
        return true;
      }
    }
    return false;
  }

  static bool isMasterCardNumber(String? value) {
    if (isValidCreditCardNumber(value)) {
      if (value!.startsWith(
          RegExp(r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
        return true;
      }
    }
    return false;
  }

  static bool isEmail(String? value) {
    if (isStringNotEmpty(value)) {
      if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value!)) {
        return true;
      }
    }
    return false;
  }

  static bool isPassword(String? value, [String? first]) {
    if (isStringNotEmpty(value)) {
      if (value!.length >= 8) {
        if (first != null) {
          return value == first;
        }
        return true;
      }
    }
    return false;
  }

  static bool isPhoneNumber(String? value) {
    if (isInt(value)) {
      if (value!.length == 8) {
        return true;
      }
    }
    return false;
  }

  static bool isDouble(String? value) {
    if (value == null) {
      return false;
    }
    return double.tryParse(value) != null;
  }

  static bool isInt(String? value) {
    if (value == null) {
      return false;
    }
    return int.tryParse(value) != null;
  }

  static bool isCount(String? value) {
    if (value == null) {
      return false;
    }
    int? n = int.tryParse(value);
    return n == null ? false : n > 0;
  }
}

final Random random = Random();
