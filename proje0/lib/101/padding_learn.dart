import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: <Widget>[
            //!-----------------------------------------------------------------

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10), child: Container(color: Colors.white, height: 70)),

            //!-----------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
              child: Container(color: Colors.amber, height: 100),
            ),

            //!-----------------------------------------------------------------

            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text('ALİ'),
              //SADECE TEK TARAFTAN BOŞLUK BIRAKMAK İÇİN ONLY KULLANILIR.
            ),

            //!-----------------------------------------------------------------

            Padding(
              padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical,
              child: const Text('VELİ'),
              //İSTENİRSE BÖYLE BİRDEN FAZLA EDGEINSETS TOPLANABİLİR.
            ),

            //!-----------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

//?-----------------------------------------------------------------------------
class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
