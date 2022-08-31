import 'package:flutter/material.dart';
import 'package:proje0/101/icon_learn.dart';
import 'package:proje0/101/image_learn.dart';
import 'package:proje0/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);

  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        // YANA KARDIRMALI SAYFALAR OLUŞTURU. ÇOK KULLANIŞLIDIR.
        padEnds: false,
        // false iken sayfa başlangıçtan başlar. true iken sola boşluklı olur.
        controller: _pageController,
        // SAYFALARI ORANA KÜÇÜLTÜP. DİĞER SAYFALARI UCUNDAN GÖSTERİR.
        onPageChanged: _updatePageIndex,
        children: [
          const ImageLaern(),
          IconLearnView(),
          const StackLearn(),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.yellow),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
