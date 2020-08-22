import 'package:flutter/cupertino.dart';

import 'constants.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: Home(),
    );
  }
}
