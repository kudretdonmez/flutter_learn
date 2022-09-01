import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListDemoLearnState();
}

class _ListDemoLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
// LISTVIEW İLE DİKEYDE SONSUZ YÜKSEKSİK ELDE EDİLEBİLİR.
// AŞAĞI KAYAN SAYFA OLUŞTURULUR.
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'MERHABA',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
              //maxLines ile yazıya satır sınırlaması getirilebilir.
              //AMA YAZI YATAY OLARAK TAŞABİLİR
              //O ZAMAN FITTEDBOX KULLANILIR.
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 300,
                ),
                Container(
                  color: Colors.yellow,
                  width: 300,
                ),
                Container(
                  color: Colors.blue,
                  width: 300,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          FittedBox(
            child: Text(
              'MERHABA',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
              //maxLines ile yazıya satır sınırlaması getirilebilir.
              //AMA YAZI YATAY OLARAK TAŞABİLİR
              //O ZAMAN FITTEDBOX KULLANILIR.
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 300,
                ),
                Container(
                  color: Colors.yellow,
                  width: 300,
                ),
                Container(
                  color: Colors.blue,
                  width: 300,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          const _ListDemo(),
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  // GİRDİĞİ CHİLD'DA TETİKLEME YAPAR
  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  // ÇIKTIĞI CHİLD'DA TETİKLEME YAPAR.
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
