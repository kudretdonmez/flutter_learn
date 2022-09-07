import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);

  final String name = 'velii';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  color: Colors.lime,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              /* !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! */
              //en yanlış yöntem.
              //stillerin themedan yada classtan çekilmesi lazım.
            ),
            Text(
              'WELCOME CLASS oluşturma',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'WELCOME THEME ',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor),
              //style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.amber),

              //en doğru olan yöntemdir theme'dan çekmek
              //fontu temadan çekebiliriz
              //başka bir ayar çekmek için "copyWith()" kullanılacak
            ),
            Text(userName ?? 'sasda'),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    fontSize: 16,
    height: 2,
    color: Colors.deepOrange[100],
    fontWeight: FontWeight.w100,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
