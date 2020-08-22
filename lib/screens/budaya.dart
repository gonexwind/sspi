import 'package:flutter/cupertino.dart';
import 'package:saran_sistem_pendidikan/widgets/buildCard.dart';
import 'package:saran_sistem_pendidikan/widgets/buildHero.dart';

import '../constants.dart';

class Budaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Budaya')),
      child: SingleChildScrollView(
        child: Container(
          color: white,
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              buildHero(discoverable),
              SizedBox(height: 38),
              Column(
                children: <Widget>[
                  buildCard('Suku Sendiri', greenDark, () {}),
                  SizedBox(height: 38),
                  buildCard('Beragam Suku', blueLight, () {}),
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
