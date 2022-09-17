import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //!-------------------------------------------------------------------
          Card(
            //elevation: 100, ön plana çıkarır
            //margin: EdgeInsets.all(10), YANLIŞ KULLANIM. CLASSTAN ÇEKMEK LAZIM
            margin: ProjectMargin.cardMargin,
            shape: ProjectMargin.roundedRectangle,
            //StadiumBorder(), CircleBorder(),
            child: const SizedBox(
              height: 100,
              width: 200,
              child: Center(
                child: Text('ALİ'),
              ),
            ),
          ),

          //!-------------------------------------------------------------------

          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(
              height: 100,
              width: 200,
            ),
          ),

          //?-------------------------------------------------------------------

          _CustomCard(
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('ALİ')),
            ),
          ),
          //*---EN İYİ YÖNTEM---

          //?-------------------------------------------------------------------
        ],
      ),
    );
  }
}

//!-----------------------------------------------------------------------------

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(5);
  static final roundedRectangle = RoundedRectangleBorder(borderRadius: BorderRadius.circular(4));
  // HOT RELOAD YAPMAN GEREKEBİLİR.
  //roundedRectangleBorder İSMİNİ VERME
}

//?-----------------------------------------------------------------------------
class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(5));
  //* -------------------- EN İYİ YÖNTEM -----------------
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      //shape: ProjectMargin.roundedRectangleBorder,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
  //?---------------------------------------------------------------------------
}
