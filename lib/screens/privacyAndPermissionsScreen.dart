import 'package:bibti/constants.dart';
import 'package:bibti/screens/homeScreen.dart';
import 'package:bibti/widgets/buildReusableButton.dart';
import 'package:flutter/material.dart';
import 'package:bibti/utils/utils.dart';

class PrivacyAndPermissionsScreen extends StatelessWidget {
  static const String id = 'privacy_and_permissions _screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(displayHeight(context) * 0.02),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(bottom: displayHeight(context) * 0.02),
            child: Text(
              kPrivacyAndPermissions,
              style: TextStyle(
                  color: kColorPurple,
                  fontFamily: 'Coves',
                  fontSize: displayHeight(context) * 0.02,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: displayHeight(context) * 0.6,
            child: ListView(
              children: [
                Text(kLoremIpsum),
              ],
            ),
          ),
          SizedBox(
            width: displayWidth(context) * 0.5,
            child: BuildReusableButton(
                buttonText: kAgree,
                onPressed: () => Navigator.pushNamed(context, HomeScreen.id),
                buttonColor: kColorTeal,
                textColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
