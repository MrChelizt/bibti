import 'package:flutter/material.dart';
import '../constants.dart';
import '../sizes_helpers.dart';
import '../reusable_button.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPurple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kLoginText,
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
                  kEmailText,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Coves',
                    fontSize: displayHeight(context) * 0.03,
                  ),
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: Text(
                  kEmailText,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Coves',
                    fontSize: displayHeight(context) * 0.03,
                  ),
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: Text(
                  kPasswordText,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Coves',
                    fontSize: displayHeight(context) * 0.03,
                  ),
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: Text(
                  kEmailText,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Coves',
                    fontSize: displayHeight(context) * 0.03,
                  ),
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: ReusableButton(
                  buttonColor: kColorPurple,
                  buttonText: kLoginText,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              Text(
                'FORGOT PASSWORD?',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Coves',
                  fontSize: displayHeight(context) * 0.02,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              Text(
                kSignUpText,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Coves',
                  fontSize: displayHeight(context) * 0.02,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}