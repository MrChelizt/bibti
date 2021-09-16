import 'package:bibti/screens/loginScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../utils/sizeHelperUtil.dart';
import '../widgets/buildReusableButton.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorTeal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kSignUp,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Coves',
                  fontSize: displayHeight(context) * 0.035,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
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
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: displayHeight(context) * 0.05,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: false, // to trigger disabledBorder
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.red),
                    ),
                    hintText: "Enter email...",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                  ),
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: Text(
                  kCreatePassword,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Coves',
                    fontWeight: FontWeight.w600,
                    fontSize: displayHeight(context) * 0.03,
                  ),
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: displayHeight(context) * 0.05,
                child: TextField(
                  enabled: false, // to trigger disabledBorder
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.red),
                    ),
                    hintText: "Enter password...",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                  ),
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: Text(
                  kCreatePassword,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Coves',
                    fontWeight: FontWeight.w600,
                    fontSize: displayHeight(context) * 0.03,
                  ),
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: displayHeight(context) * 0.05,
                child: TextField(
                  enabled: false, // to trigger disabledBorder
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.red),
                    ),
                    hintText: "Enter password...",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                  ),
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: Text(
                  kCreatePassword,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Coves',
                    fontWeight: FontWeight.w600,
                    fontSize: displayHeight(context) * 0.03,
                  ),
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: displayHeight(context) * 0.05,
                child: TextField(
                  enabled: false, // to trigger disabledBorder
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 2, color: Colors.red),
                    ),
                    hintText: "Enter password...",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                  ),
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              Container(
                width: displayWidth(context) * 0.85,
                height: displayHeight(context) * 0.05,
                child: BuildReusableButton(
                  buttonColor: kColorPurple,
                  buttonText: kLogin,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.08,
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
    );
  }
}
