import 'package:flutter/material.dart';
import '../constants.dart';
import '../sizes_helpers.dart';
import '../reusable_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kTitleText,
                style: TextStyle(
                  color: kColorTeal,
                  fontFamily: 'Coves',
                  fontSize: displayWidth(context) * 0.2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.01,
              ),
              SizedBox(
                width: displayWidth(context) * 0.5,
                child: Image.asset('images/LogoTealLarge.png'),
              ),
              SizedBox(
                height: displayHeight(context) * 0.015,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: ReusableButton(
                  buttonColor: kColorTeal,
                  buttonText: kLoginText,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.01,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                child: ReusableButton(
                  textColor: kColorTeal,
                  onPressed: () {},
                  buttonText: kSignUpText,
                  buttonColor: Colors.white,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
