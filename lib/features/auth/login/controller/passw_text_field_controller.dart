// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  bool showPassword = false;

  // ignore: inference_failure_on_function_return_type
  changeShowPassword() {
    showPassword = !showPassword;
    notifyListeners();
  }
}
