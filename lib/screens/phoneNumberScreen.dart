import 'package:bibti/screens/smsVerificationScreen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/widgets/widgets.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:bibti/enums/inputType.dart';

class PhoneNumberScreen extends StatefulWidget {
  static const String id = 'phone_number_screen';
  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  Map<String, String> _loginObject = Map<String, String>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  final FocusNode _phoneNumberFocusNode = FocusNode();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: kColorTeal,
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
                        kPhoneNumber,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Coves',
                          fontWeight: FontWeight.w600,
                          fontSize: displayHeight(context) * 0.03,
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
                          hintText: '+1 (234) 567-89-01',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        onSaved: (String val) => {
                          //   print(val),
                          //   print(maskFormatter
                          //       .updateMask(mask: '############')
                          //       .text),
                          _loginObject['phoneNumber'] = val
                        },
                        validator: (value) {
                          return InputValidationUtil().inputValidationAndFocus(
                              value,
                              InputType.PHONE_NUMBER,
                              _phoneNumberFocusNode);
                        },
                        inputFormatters: [
                          MaskTextInputFormatter(mask: '+# (###) ###-##-##')
                        ],
                        autocorrect: false,
                        autofocus: true,
                        focusNode: _phoneNumberFocusNode,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.02,
                    ),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: BuildReusableButton(
                          buttonColor: kColorPurple,
                          buttonText: kVerifyPhone,
                          textColor: Colors.white,
                          onPressed: () {
                            if (_key.currentState.validate()) {
                              _key.currentState.save();
                              Navigator.pushNamed(
                                  context, SmsVerificationScreen.id);
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
