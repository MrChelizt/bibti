import 'package:bibti/enums/inputType.dart';
import 'package:flutter/material.dart';
import 'package:bibti/screens/screens.dart';
import 'package:flutter/gestures.dart';
import '../constants.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/widgets/widgets.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Map<String, String> _loginObject = Map<String, String>();
  String _pass1;
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  final FocusNode _firstNameFocusNode = FocusNode();
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
                        kSignUp,
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
                        kFirstName,
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
                          hintText: kFirstName,
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        onSaved: (String val) =>
                            _loginObject['firstName'] = val,
                        validator: (value) {
                          return InputValidationUtil().inputValidationAndFocus(
                              value, InputType.NAME, _firstNameFocusNode);
                        },
                        autofocus: true,
                        focusNode: _firstNameFocusNode,
                      ),
                    ),
                    Container(
                      width: displayWidth(context) * 0.85,
                      height: displayHeight(context) * 0.05,
                      child: Text(
                        kSurname,
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
                          hintText: kSurname,
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        onSaved: (String val) => _loginObject['email'] = val,
                        validator: (value) {
                          return InputValidationUtil()
                              .inputValidation(value, InputType.GENERIC);
                        },
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
                          hintText: kEmail,
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        onSaved: (String val) => _loginObject['email'] = val,
                        validator: (value) {
                          return InputValidationUtil()
                              .inputValidation(value, InputType.EMAIL);
                        },
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
                          hintText: kPassword,
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
                    Container(
                      width: displayWidth(context) * 0.85,
                      height: displayHeight(context) * 0.05,
                      child: Text(
                        kConfirmPassword,
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
                          hintText: kConfirmPassword,
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        obscureText: true,
                        onSaved: (String val) =>
                            _loginObject['password2'] = val,
                        validator: (value) {
                          return InputValidationUtil()
                              .passwordConfirmationValidation(value, _pass1);
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
                        buttonText: kSignUp,
                        textColor: Colors.white,
                        onPressed: () {
                          if (_key.currentState.validate()) {
                            Navigator.pushNamed(context, PhoneNumberScreen.id);
                          } else {
                            _autoValidate = AutovalidateMode.always;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.06,
                    ),
                    RichText(
                      text: TextSpan(
                        text: kAlreadyHaveAccount.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Coves',
                          fontSize: displayHeight(context) * 0.017,
                          fontWeight: FontWeight.w900,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, LoginScreen.id);
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
