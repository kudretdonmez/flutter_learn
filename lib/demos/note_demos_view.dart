import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proje0/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _head = 'Bu Uygulamayı Kudret yazmıştır.';
  final _description = 'KUDRET DÖNMEZ';
  final _buttonnote = 'Note Oluştur';
  final _buttonnote2 = 'Notları Taşı';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        //EKRAN AÇIK RENKLİ OLDUĞU İÇİN SİSTEM SİMGELERİNİ DARK YAPAR. SAAT WİFİ V.S.
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: <Widget>[
            //SIZEDBOXU KENDIM YAPTIM. ÇÜNKÜ LOGO ÇOK BÜYÜKTÜ.
            SizedBox(height: 150, width: 150, child: PngImage(name: ImageItems().appleBookWithoutPath)),
            _TitleWidget(title: _head),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(title: _description * 10),
            ),
            const Spacer(),
            _createButton(context),

            TextButton(
                onPressed: () {}, child: SizedBox(height: ButtonSpecs.botButtonHeight, child: Text(_buttonnote2))),

            const SizedBox(height: ButtonSpecs.sizedBoxHeight),
            //AŞAĞIYA BİR MİKTAR BOŞLUK BIRAKILDI.
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonSpecs.buttonNormalHeight,
            child: Center(
                child: Text(
              _buttonnote,
              style: Theme.of(context).textTheme.headline6,
            ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    this.textAlign = TextAlign.center,
    required this.title,
  }) : super(key: key);
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.blue, fontWeight: FontWeight.w400),
    );
  }
}
//ÜSTTEKİ YAZILAR

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}
// ALTTAKİ YAZILAR

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
// YAZILARIN AŞAĞI-YUKARI ve SAĞ-SOL BOŞLUKLARI

class ButtonSpecs {
  static const double buttonNormalHeight = 25;
  // 1. BUTONUN YÜKSEKLİĞİ
  static const double botButtonHeight = 35;
  // 2. BUTONUN YÜKSEKLİĞİ
  static const double sizedBoxHeight = 50;
  // SİZEDBOX YÜKSEKLİĞİ
}
