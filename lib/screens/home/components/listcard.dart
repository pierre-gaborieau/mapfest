import 'package:flutter/material.dart';

import 'card_fest.dart';

class ListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[card_fest(), card_fest(), card_fest()],
        ));
  }
}
