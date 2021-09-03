import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page Hello'),
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
                  fontSize: 60.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('images/LogoTealLarge.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 300.0,
                child: TextButton(
                  child: Text(
                    'LOG IN',
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    primary: Colors.white,
                    backgroundColor: kColorTeal,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 300.0,
                child: TextButton(
                  child: Text(
                    'SIGN UP',
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    primary: kColorTeal,
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 120.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
