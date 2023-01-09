import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTaleLearn extends StatelessWidget {
  const ListTaleLearn({Key? key}) : super(key: key);
  //final imageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            //* COLUMN PADDING İLE SARMALANDI. SAYFAYA BOŞLUK ATANDI.
            //* THEMEDEN LISTTILE'ın PADDING'i SIFIRLANDI.

            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                //* CARD'ı rahatlatmak için listtile'a padding verilebilir.
                child: ListTile(
                  //title: const Text('ANA BAŞLIK'),
                  //title: Image.network(imageUrl,height: 100,fit: BoxFit.cover,),
                  title: const RandomImage(),
                  //* IMAGE CORE'DAN ÇEKİLİYOR.

                  //contentPadding: EdgeInsets.zero,
                  //* CONTENT PADDING HER YERDE SIFIR OLMASI İÇİN MAİN.DART'TAN THEME'DEN AYARLANIR.
                  //listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero), EKLENDİ THEMEYE

                  subtitle: const Text('Bu kartın alt başlığı'),

                  dense: true,
                  //* COMPANENTLERİ MİNİMUM BOYUTA İNDİRGER.

                  minVerticalPadding: 0,

                  //!-----------------------------------------------------------

                  leading: Container(
                    //color: Colors.red,
                    //* RENK GEÇİCİ OLARAK VERİLDİ. CONTAİNERİN KAPLADIĞI ALANI GÖRMEK İÇİN.
                    height: 200,
                    width: 30,
                    alignment: Alignment.bottomCenter,
                    child: const Icon(Icons.money),
                  ),
                  //* SOLA EKLEMEK İÇİN LEADİNG
                  //!-----------------------------------------------------------
                  trailing: const SizedBox(
                    width: 20,
                    //color: Colors.red,
                    child: Icon(Icons.chevron_right),
                  ),
                  //* SAĞA EKLEMEK İÇİN TRAILING
                  //!-----------------------------------------------------------

                  onTap: (() {}),
                  //* TIKLAMA ÖZELLİĞİ KAZANDIRMAK İÇİN ONTAP
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
