import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: ColorsItems.sulu,
            child: Text(
              'DATA',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}

//*-----------------------------------------------------------------------------
class ColorsItems {
  static Color sunray = const Color(0xFFD9AE61);

  static Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}
