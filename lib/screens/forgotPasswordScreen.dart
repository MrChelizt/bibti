import 'package:flutter/material.dart';
import 'package:bibti/screens/screens.dart';
import 'package:flutter/gestures.dart';
import '../constants.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/widgets/widgets.dart';
import 'package:bibti/enums/inputType.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String id = 'forgot_password_screen';
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  Map<String, String> _loginObject = Map<String, String>();
  final FocusNode _emailFocusNode = FocusNode();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: displayHeight(context) * 0.06),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        kPasswordReset,
                        style: TextStyle(
                          fontFamily: 'Coves',
                          fontSize: displayHeight(context) * 0.03,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(displayWidth(context) * 0.07),
                      child: Text(
                          'Enter your email address and we\'ll send you instructions on how to reset your password.'),
                    ),
                  ],
                ),
                Container(
                  width: displayWidth(context) * 0.85,
                  height: displayHeight(context) * 0.03,
                  child: Text(
                    kEmail,
                    style: TextStyle(
                      fontFamily: 'Coves',
                      fontWeight: FontWeight.w600,
                      fontSize: displayHeight(context) * 0.02,
                    ),
                  ),
                ),
                Container(
                  width: displayWidth(context) * 0.85,
                  height: displayHeight(context) * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding:
                          EdgeInsets.all(displayHeight(context) * 0.011),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter email...",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                    ),
                    onSaved: (String val) => _loginObject['email'] = val,
                    validator: (value) {
                      return InputValidationUtil().inputValidationAndFocus(
                          value, InputType.EMAIL, _emailFocusNode);
                    },
                    autofocus: true,
                    focusNode: _emailFocusNode,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  width: displayWidth(context) * 0.85,
                  child: TextButton(
                    child: Text(
                      kSubmit.toUpperCase(),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: kColorPurple,
                      elevation: 5,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: displayHeight(context) * 0.02,
                        fontFamily: 'Kollektif',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, LoginScreen.id);
                    },
                  ),
                ),
                Container(
                  width: displayWidth(context) * 0.85,
                  child: TextButton(
                    child: Text(
                      kCancel.toUpperCase(),
                    ),
                    style: TextButton.styleFrom(
                      primary: kColorPurple,
                      backgroundColor: Colors.white,
                      elevation: 5,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: displayHeight(context) * 0.02,
                        fontFamily: 'Kollektif',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, LoginScreen.id);
                    },
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.08,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
