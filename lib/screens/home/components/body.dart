import 'package:flutter/material.dart';
import 'package:mapfest/screens/home/components/title.dart';
import 'package:mapfest/screens/home/components/widget_trending.dart';
import '../../../constant.dart';
import 'listcard.dart';
import 'titlebutton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: vDefaultPadding, top: vDefaultPadding),
          child: title(
            text: "Tendance",
          ),
        ),
        widget_trending(
          size: size,
          imgPath: "images/hellfest.png",
          festName: "Hellfest",
          festCity: "Clisson",
          festCountry: "France",
        ),
        Padding(
          padding: const EdgeInsets.only(left: vDefaultPadding),
          child: title(
            text: "Plus de festivals",
          ),
        ),
        ListCard(),
        Padding(
          padding: const EdgeInsets.only(top: vDefaultPadding),
          child: TitleWithButton(
            tBtn: "Tout",
            press: () {},
            tTitle: "En Metal",
          ),
        ),
        ListCard(),
        Padding(
          padding: const EdgeInsets.only(top: vDefaultPadding),
          child: TitleWithButton(
            tBtn: "Tout",
            press: () {},
            tTitle: "En Electro",
          ),
        ),
        ListCard(),
      ],
    ));
  }
}
