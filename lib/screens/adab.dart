import 'package:flutter/cupertino.dart';
import 'package:saran_sistem_pendidikan/widgets/buildCard.dart';
import 'package:saran_sistem_pendidikan/widgets/buildHero.dart';

import '../constants.dart';

class Adab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Adab')),
      child: SingleChildScrollView(
        child: Container(
          color: white,
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              buildHero(social),
              SizedBox(height: 38),
              Column(
                children: <Widget>[
                  buildCard('Agama', greenDark, () {}),
                  SizedBox(height: 38),
                  buildCard('Social', blueLight, () {}),
                  SizedBox(height: 38),
                  buildCard('Internet', greenLight, () {}),
                  SizedBox(height: 38),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
