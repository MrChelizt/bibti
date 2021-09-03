import 'package:flutter/material.dart';
import 'constants.dart';
import 'sizes_helpers.dart';
import 'button_context.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bibti',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
