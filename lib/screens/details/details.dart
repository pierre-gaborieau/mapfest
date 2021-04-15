import 'package:flutter/material.dart';
import 'package:mapfest/screens/details/components/body.dart';

import '../../constant.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: vPrimaryColor,
      ),
      body: Body(),
    );
  }
}
