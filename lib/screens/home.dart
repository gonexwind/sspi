import 'package:flutter/cupertino.dart';
import 'package:saran_sistem_pendidikan/screens/bahasa.dart';
import 'package:saran_sistem_pendidikan/screens/ilmu.dart';

import '../constants.dart';
import 'adab.dart';
import 'budaya.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Container(
          color: white,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(hero),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildText(titleHome, black, 28, FontWeight.w700),
                    SizedBox(height: 6),
                    buildText(author, black, 14, FontWeight.w400),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        buildCard('Adab', greenDark, Adab(), context),
                        SizedBox(width: 20),
                        buildCard('Bahasa', blueLight, Bahasa(), context),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        buildCard('Budaya', blueDark, Budaya(), context),
                        SizedBox(width: 20),
                        buildCard('Ilmu', greenLight, Ilmu(), context),
                      ],
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      String text, Color color, Widget route, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => route,
          ),
        );
      },
      child: Container(
        height: 100,
        width: 145,
        child: Padding(
          padding: const EdgeInsets.only(left: 19, top: 56, bottom: 16),
          child: buildText(text, white, 20, FontWeight.w500),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
      ),
    );
  }

  Text buildText(
      String text, Color fontColor, double fontSize, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
