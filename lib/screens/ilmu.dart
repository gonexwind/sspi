import 'package:flutter/cupertino.dart';
import 'package:saran_sistem_pendidikan/widgets/buildCard.dart';
import 'package:saran_sistem_pendidikan/widgets/buildHero.dart';

import '../constants.dart';

class Ilmu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Ilmu')),
      child: SingleChildScrollView(
        child: Container(
          color: white,
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              buildHero(learning),
              SizedBox(height: 38),
              Column(
                children: <Widget>[
                  buildCard('Pengetahuan Umum', greenDark, () {}),
                  SizedBox(height: 38),
                  buildCard('Fokus Peserta Didik', blueLight, () {}),
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
