import 'package:flutter/cupertino.dart';
import 'package:saran_sistem_pendidikan/widgets/buildCard.dart';
import 'package:saran_sistem_pendidikan/widgets/buildHero.dart';

import '../constants.dart';

class Bahasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Bahasa')),
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
                  buildCard('Bahasa Agama', greenDark, () {}),
                  SizedBox(height: 38),
                  buildCard('Bahasa Daerah', blueLight, () {}),
                  SizedBox(height: 38),
                  buildCard('Bahasa Nasional', greenLight, () {}),
                  SizedBox(height: 38),
                  buildCard('Bahasa Internasional', blueDark, () {}),
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
