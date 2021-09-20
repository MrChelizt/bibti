import 'screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        ForgotPasswordScreen.id: (context) => ForgotPasswordScreen(),
        PhoneNumberScreen.id: (context) => PhoneNumberScreen(),
        SmsVerificationScreen.id: (context) => SmsVerificationScreen(),
        PrivacyAndPermissionsScreen.id: (context) =>
            PrivacyAndPermissionsScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
