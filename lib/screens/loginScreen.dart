import 'package:flutter/material.dart';
import 'package:bibti/screens/screens.dart';
import 'package:flutter/gestures.dart';
import '../constants.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/widgets/widgets.dart';
import 'package:bibti/enums/inputType.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String, String> _loginObject = Map<String, String>();
  String _pass1;
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  final FocusNode _emailFocusNode = FocusNode();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: kColorTeal,
        body: Form(
          autovalidateMode: _autoValidate,
          key: _key,
          child: SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: displayHeight(context) * 0.08,
                      child: Text(
                        kLogin,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Coves',
                          fontSize: displayHeight(context) * 0.035,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      width: displayWidth(context) * 0.85,
                      height: displayHeight(context) * 0.05,
                      child: Text(
                        kEmail,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Coves',
                          fontWeight: FontWeight.w600,
                          fontSize: displayHeight(context) * 0.03,
                        ),
                      ),
                    ),
                    Container(
                      width: displayWidth(context) * 0.85,
                      height: displayHeight(context) * 0.08,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
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
                      height: displayHeight(context) * 0.05,
                      child: Text(
                        kPassword,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Coves',
                          fontWeight: FontWeight.w600,
                          fontSize: displayHeight(context) * 0.03,
                        ),
                      ),
                    ),
                    Container(
                      width: displayWidth(context) * 0.85,
                      height: displayHeight(context) * 0.08,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          isDense: true,
                          contentPadding:
                              EdgeInsets.all(displayHeight(context) * 0.011),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter password...",
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        obscureText: true,
                        onChanged: (String val) => setState(() => _pass1 = val),
                        onSaved: (String val) => _loginObject['password'] = val,
                        validator: (value) {
                          return InputValidationUtil()
                              .inputValidation(value, InputType.PASSWORD);
                        },
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.02,
                    ),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: BuildReusableButton(
                          buttonColor: kColorPurple,
                          buttonText: kLogin,
                          textColor: Colors.white,
                          onPressed: () {
                            if (_key.currentState.validate()) {
                              _key.currentState.save();
                              Navigator.popAndPushNamed(context, HomeScreen.id);
                            }
                          }),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.08,
                    ),
                    RichText(
                      text: TextSpan(
                          text: kForgotPassword.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Coves',
                            fontSize: displayHeight(context) * 0.017,
                            fontWeight: FontWeight.w900,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.popAndPushNamed(
                                  context, ForgotPasswordScreen.id);
                            }),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.08,
                    ),
                    RichText(
                      text: TextSpan(
                        text: kSignUp.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Coves',
                          fontSize: displayHeight(context) * 0.017,
                          fontWeight: FontWeight.w900,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, SignupScreen.id);
                          },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
