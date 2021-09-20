import 'package:flutter/material.dart';
import 'package:bibti/enums/inputType.dart';

class InputValidationUtil {
  String inputValidation(String input, InputType inputType) {
    return inputValidationAndFocus(input, inputType, null);
  }

  String inputValidationAndFocus(
      String input, InputType inputType, FocusNode inputFocusNode) {
    bool isEmpty = input.isEmpty;
    String validationResult;

    switch (inputType) {
      case InputType.EMAIL:
        if (!isEmpty) validationResult = _emailValidation(input);
        _requestInputFocus(inputFocusNode, isEmpty || validationResult != null);
        break;
      case InputType.NAME:
        _requestInputFocus(inputFocusNode, isEmpty);
        break;
      case InputType.PASSWORD:
        if (!isEmpty) validationResult = _passwordValidation(input);
        break;
      case InputType.PHONE_NUMBER:
        if (!isEmpty) validationResult = _phoneNumberValidation(input);
        break;
      case InputType.VERIFICATION_CODE:
        if (!isEmpty) validationResult = _verificationCodeValidation(input);
        break;
      case InputType.GENERIC:
        break;
    }
    if (isEmpty) validationResult = 'This field cannot be empty';
    return validationResult;
  }

  void _requestInputFocus(FocusNode inputFocusNode, bool isEmpty) {
    if (isEmpty && inputFocusNode != null) inputFocusNode.requestFocus();
  }

  String _emailValidation(String email) {
    RegExp regex = RegExp(r'\w+@\w+\.\w+');
    if (!regex.hasMatch(email))
      return "That doesn't look like an email address";
    return null;
  }

  String _passwordValidation(String pass1) {
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

  String passwordConfirmationValidation(String pass2, String pass1) {
    print(pass1);
    print(pass2);
    print(pass2 == pass1);
    return (pass2 == pass1) ? null : 'The two passwords must match';
  }

  String _phoneNumberValidation(String phone) {
    if (phone.length != 18) return 'Incorrect phone format';
    return null;
  }

  String _verificationCodeValidation(String code) {
    if (code != '123456') return 'Incorrect verification code';
    return null;
  }
}
