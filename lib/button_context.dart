import 'package:flutter/material.dart';
import 'sizes_helpers.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final Color buttonColor;
  final Color textColor;

  ReusableButton({
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
          fontSize: displayHeight(context) * 0.019,
          fontFamily: 'Kollektif',
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
