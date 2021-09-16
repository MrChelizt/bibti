import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InputValidationUtil {
  String passwordValidation(String pass1) {
    RegExp hasUpper = RegExp(r'[A-Z]');
    RegExp hasLower = RegExp(r'[a-z]');
    RegExp hasDigit = RegExp(r'\d');
    RegExp hasPunct = RegExp(r'[_!@#\$&*~-]');
    if (!RegExp(r'.{8,}').hasMatch(pass1))
      return 'Passwords must have at least 8 characters';
    if (!hasUpper.hasMatch(pass1))
      return 'Passwords must have at least one uppercase character';
    if (!hasLower.hasMatch(pass1))
      return 'Passwords must have at least one lowercase character';
    if (!hasDigit.hasMatch(pass1))
      return 'Passwords must have at least one number';
    if (!hasPunct.hasMatch(pass1))
      return 'Passwords need at least one special character like !@#\$&*~-';
    return null;
  }

  String emailValidation(String email, FocusNode emailFocusNode) {
    RegExp regex = RegExp(r'\w+@\w+\.\w+');
    if (email.isEmpty || !regex.hasMatch(email)) emailFocusNode.requestFocus();
    if (email.isEmpty)
      return 'We need an email address';
    else if (!regex.hasMatch(email))
      return "That doesn't look like an email address";
    else
      return null;
  }
}
