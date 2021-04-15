import 'package:flutter/material.dart';
import 'package:mapfest/screens/details/details.dart';

import '../../../constant.dart';

// ignore: camel_case_types
class widget_trending extends StatelessWidget {
  const widget_trending({
    Key key,
    @required this.size,
    this.imgPath,
    this.festName,
    this.festCity,
    this.festCountry,
  }) : super(key: key);

  final Size size;
  final String imgPath;
  final String festName;
  final String festCity;
  final String festCountry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: vDefaultPadding, left: vDefaultPadding, right: vDefaultPadding),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Details()));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: vDefaultPadding * 2.5),
          height: size.height * 0.4,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: vDefaultPadding,
                  right: vDefaultPadding,
                  bottom: 36 + vDefaultPadding,
                ),
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: vBackgroundColor.withOpacity(0.5),
                ),
                child: Image.asset(imgPath),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                height: size.height * 0.1,
                color: vBackgroundColor,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: vDefaultPadding),
                      child: Row(
                        children: <Widget>[
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: festName + " \n",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            TextSpan(text: festCity + " (" + festCountry + ")")
                          ]))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
