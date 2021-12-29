import 'package:flutter/material.dart';
import 'package:test_instalasi_flutter/constants.dart';
import 'package:test_instalasi_flutter/screens/home/home-screen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Test Food App",
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kSecondaryColor),
            bodyText2: TextStyle(color: kSecondaryColor),
          )),
      home: HomeScreen(),
    );
  }
}
