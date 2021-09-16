import 'package:flutter/material.dart';
import '../utils/sizeHelperUtil.dart';

class BuildReusableButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final Color buttonColor;
  final Color textColor;

  BuildReusableButton({
    @required this.buttonText,
    @required this.onPressed,
    @required this.buttonColor,
    @required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        buttonText.toUpperCase(),
      ),
      style: TextButton.styleFrom(
        primary: textColor,
        backgroundColor: buttonColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: displayHeight(context) * 0.02,
          fontFamily: 'Kollektif',
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
