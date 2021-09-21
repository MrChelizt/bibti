import 'package:bibti/constants.dart';
import 'package:bibti/screens/homeScreen.dart';
import 'package:bibti/widgets/buildReusableButton.dart';
import 'package:flutter/material.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/enums/inputType.dart';

class DoorToDoorBuddyScreen extends StatelessWidget {
  static const String id = 'door_to_door_buddy_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.32,
      child: Scaffold(
          body: Form(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: displayWidth(context) * 0.6,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(displayHeight(context) * 0.02),
                child: Text(
                  kFrom,
                  style: TextStyle(
                      color: kColorPurple,
                      fontFamily: 'Coves',
                      fontSize: displayHeight(context) * 0.02,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                width: displayWidth(context) * 0.6,
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
                    hintText: "Enter address...",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                  ),
                ),
              ),
              Container(
                width: displayWidth(context) * 0.6,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(displayHeight(context) * 0.02),
                child: Text(
                  kTo,
                  style: TextStyle(
                      color: kColorPurple,
                      fontFamily: 'Coves',
                      fontSize: displayHeight(context) * 0.02,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                width: displayWidth(context) * 0.6,
                margin: EdgeInsets.only(bottom: displayHeight(context) * 0.02),
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
                    hintText: "Enter address...",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                  ),
                  validator: (value) {
                    return InputValidationUtil().inputValidationAndFocus(
                      value,
                      InputType.NAME,
                      FocusNode(canRequestFocus: false),
                    );
                  },
                ),
              ),
              SizedBox(
                width: displayWidth(context) * 0.5,
                child: BuildReusableButton(
                    buttonText: kRequestBuddy,
                    onPressed: () =>
                        Navigator.popAndPushNamed(context, HomeScreen.id),
                    buttonColor: kColorPurple,
                    textColor: Colors.white),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
