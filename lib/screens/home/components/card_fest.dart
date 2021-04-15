import 'package:flutter/material.dart';
import 'package:mapfest/screens/details/details.dart';

import '../../../constant.dart';

// ignore: camel_case_types
class card_fest extends StatelessWidget {
  const card_fest({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: vDefaultPadding, left: vDefaultPadding),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("images/hellfest.png"),
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                  color: vBackgroundColor.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: vBackgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Center(child: Text("Hellfest (Fr)")),
            )
          ],
        ),
      ),
    );
  }
}
