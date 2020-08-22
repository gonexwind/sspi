import 'package:flutter/cupertino.dart';

import '../constants.dart';

Widget buildCard(String text, Color color, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 82,
      width: 310,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 25, bottom: 24),
        child: Text(
          text,
          style: TextStyle(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
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
