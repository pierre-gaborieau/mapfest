import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'title.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key key,
    this.tTitle,
    this.tBtn,
    this.press,
  }) : super(key: key);

  final Function press;
  final String tTitle;
  final String tBtn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: vDefaultPadding),
      child: Row(
        children: <Widget>[
          title(
            text: tTitle,
          ),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: vPrimaryColor,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: press,
            child: Text(tBtn),
          )
        ],
      ),
    );
  }
}
