import 'package:flutter/material.dart';

const String title = 'Saran Sistem Pendidikan di Indonesia';
const String titleHome = 'Saran\nSistem Pendidikan\ndi Indonesia';
const String author = 'by Fikky Ardianto';

const String hero = 'assets/images/hero.png';
const String language = 'assets/images/language.png';
const String learning = 'assets/images/learning.png';
const String social = 'assets/images/social.png';
const String discoverable = 'assets/images/discoverable.png';


Color black = Colors.black;
Color white = Colors.white;
Color greenLight = HexColor('#96D9C8');
Color greenDark = HexColor('#51BFA6');
Color blueLight = HexColor('#86B2F3');
Color blueDark = HexColor('#466EB6');

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}