import 'package:flutter/material.dart';
import 'package:mapfest/constant.dart';
import 'package:mapfest/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: vAppName,
      theme: ThemeData(backgroundColor: vBackgroundColor),
      home: LoginScreen(),
    );
  }
}
