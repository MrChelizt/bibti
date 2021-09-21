import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/widgets/widgets.dart';
import 'package:bibti/enums/inputType.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'screens.dart';

class SmsVerificationScreen extends StatefulWidget {
  static const String id = 'sms_verification_screen';
  @override
  _SmsVerificationScreenState createState() => _SmsVerificationScreenState();
}

class _SmsVerificationScreenState extends State<SmsVerificationScreen> {
  Map<String, String> _loginObject = Map<String, String>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  final FocusNode _smsVerificationFocusNode = FocusNode();
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
                        kSmsCode,
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
                          hintText: 'Code is 123456',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        onSaved: (String val) =>
                            {_loginObject['verificationCode'] = val},
                        validator: (value) {
                          return InputValidationUtil().inputValidationAndFocus(
                              value,
                              InputType.VERIFICATION_CODE,
                              _smsVerificationFocusNode);
                        },
                        inputFormatters: [
                          MaskTextInputFormatter(mask: '######')
                        ],
                        autocorrect: false,
                        autofocus: true,
                        focusNode: _smsVerificationFocusNode,
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
                          buttonText: kVerify,
                          textColor: Colors.white,
                          onPressed: () {
                            if (_key.currentState.validate()) {
                              _key.currentState.save();
                            }
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                ),
                                builder: (context) => SingleChildScrollView(
                                      child: Container(
                                        child: PrivacyAndPermissionsScreen(),
                                      ),
                                    ));
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
