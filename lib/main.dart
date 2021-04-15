import 'package:flutter/material.dart';
import 'package:mapfest/constant.dart';
import 'constant.dart';
import 'screens/home/home_page.dart';

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
      home: HomePage(),
    );
  }
}
