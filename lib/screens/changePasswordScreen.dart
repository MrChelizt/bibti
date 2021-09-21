import 'package:flutter/material.dart';
import 'package:bibti/constants.dart';
import 'package:bibti/enums/inputType.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/screens/screens.dart';
import 'package:bibti/widgets/widgets.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const String id = 'change_password_screen';

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  Map<String, String> _loginObject = Map<String, String>();
  String _pass1;
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  final FocusNode _emailFocusNode = FocusNode();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorTeal,
        title: Image.asset(
          'images/LogoWhiteSmallWithText.png',
          height: displayHeight(context) * 0.05,
        ),
        centerTitle: true,
      ),
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
                    width: displayWidth(context) * 0.85,
                    height: displayHeight(context) * 0.05,
                    child: Text(
                      kEmail,
                      style: TextStyle(
                        color: kColorPurple,
                        fontFamily: 'Coves',
                        fontWeight: FontWeight.w600,
                        fontSize: displayHeight(context) * 0.025,
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
                      focusNode: _emailFocusNode,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    width: displayWidth(context) * 0.85,
                    height: displayHeight(context) * 0.05,
                    child: Text(
                      kChangePassword,
                      style: TextStyle(
                        color: kColorPurple,
                        fontFamily: 'Coves',
                        fontWeight: FontWeight.w600,
                        fontSize: displayHeight(context) * 0.025,
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
                        color: kColorPurple,
                        fontFamily: 'Coves',
                        fontWeight: FontWeight.w600,
                        fontSize: displayHeight(context) * 0.025,
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
                      onSaved: (String val) => _loginObject['password2'] = val,
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
                      buttonText: kUpdateUser,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, PhoneNumberScreen.id);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
