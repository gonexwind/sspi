import 'package:flutter/cupertino.dart';

Container buildHero(String image) {
  return Container(
    width: double.infinity,
    height: 240,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}