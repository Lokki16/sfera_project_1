import 'package:get/get.dart';

class Validator {
  static String? signInEmailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Enter your email';
    } else if (!value.isEmail) {
      return 'Enter valid email';
    } else {
      return null;
    }
  }

  static String? signInPasswordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Enter your password';
    } else if (value.length < 6) {
      return 'Password should contain 6 characters!';
    } else {
      return null;
    }
  }
}
