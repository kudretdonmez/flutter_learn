import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);

  final String name = 'velii';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  //* metinleri ProjectKeys'ten alabiliriz.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //!-------------------------------------------------------------------

            Text(
              '$name ${name.length}', //* NAME.LENGTH = HARF SAYISI
              maxLines: 2,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.start,
              style: const TextStyle(
                wordSpacing: 5, //* KELİME ARASI BOŞLUK
                decoration: TextDecoration.underline, //* YAZI ALTINA ÇİZGİ
                fontStyle: FontStyle.italic,
                letterSpacing: 5, //* HARF ARASI BOŞLUK
                color: Colors.lime,
                fontSize: 30,
                fontWeight: FontWeight.w900, //* HARF KALINLIĞI
              ),
              /* !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! */
              //! en yanlış yöntem.
              //* stillerin themedan yada classtan çekilmesi lazım.
            ),

            //!-------------------------------------------------------------------

            Text(
              'WELCOME CLASS oluşturma',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),

            //!-------------------------------------------------------------------

            Text(
              'WEL' * 30,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              //* ellipsis: metin taştığında 3 nokta ekler
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: ProjectColors.welcomeColor, backgroundColor: Colors.amber),
              //style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.amber),

              //* en doğru olan yöntemdir theme'dan çekmek
              //* fontu temadan çekebiliriz
              //* başka bir ayar çekmek için "copyWith()" kullanılacak
            ),

            //!-----------------------------------------------------------------------

            Text(userName ?? 'sasda'),

            //!-----------------------------------------------------------------------

            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

//*-----------------------------------------------------------------------------
//* CLASSes
class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    fontSize: 16,
    height: 2,
    color: Colors.deepOrange[100],
    fontWeight: FontWeight.w900,
  );
}

//*-----------------------------------------------------------------------------

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

//*-----------------------------------------------------------------------------

class ProjectKeys {
  final String welcome = "Merhaba";
}
