import 'package:flutter/material.dart';

// ignore: camel_case_types
class title extends StatelessWidget {
  final String text;

  const title({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    ));
  }
}
