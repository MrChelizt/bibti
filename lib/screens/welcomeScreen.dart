import 'package:bibti/screens/loginScreen.dart';
import 'package:bibti/screens/signupScreen.dart';
import 'package:bibti/widgets/buildReusableButton.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../utils/sizeHelperUtil.dart';
import '../widgets/widgets.dart';

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
              SizedBox(
                height: displayHeight(context) * 0.05,
              ),
              Text(
                kTitle,
                style: TextStyle(
                  color: kColorTeal,
                  fontFamily: 'Coves',
                  fontSize: displayWidth(context) * 0.2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.5,
                child: Image.asset('images/LogoTealLarge.png'),
              ),
              SizedBox(
                height: displayHeight(context) * 0.025,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: displayHeight(context) * 0.05,
                child: BuildReusableButton(
                  buttonColor: kColorTeal,
                  buttonText: kLogin,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: displayHeight(context) * 0.05,
                child: BuildReusableButton(
                  buttonColor: Colors.white,
                  buttonText: kSignUp,
                  textColor: kColorTeal,
                  onPressed: () {
                    Navigator.pushNamed(context, SignupScreen.id);
                  },
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
