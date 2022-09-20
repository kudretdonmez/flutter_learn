import 'package:flutter/material.dart';
import 'package:proje0/101/card_learn.dart';
import 'package:proje0/101/icon_learn.dart';
import 'package:proje0/101/image_learn.dart';
import 'package:proje0/101/padding_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        //!---------------------------------------------------------------------
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
            //* action buttona basıldığında 1.sayfaya geçer
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        //?---------------------------------------------------------------------
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          shape: const CircularNotchedRectangle(),
          child: _tabBar(),
        ),
        //!---------------------------------------------------------------------
        appBar: AppBar(),
        //!---------------------------------------------------------------------
        body: _tabBarView(),
        //!---------------------------------------------------------------------
      ),
    );
  }

  TabBar _tabBar() {
    return TabBar(
        // isScrollable: true,
        indicatorColor: Colors.white,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.green,
        //* seçili olanı kırmızı seçili olmayanı kırmızı yapar.
        padding: const EdgeInsets.all(15),
        onTap: (int index) {},
        controller: _tabController,
        tabs: _MyTabViews.values
            .map((e) => Tab(
                  text: ' ${e.name}',
                ))
            .toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      //* ekranda sağ sola kaydırarak ekran değişimini kapatır
      controller: _tabController,
      children: [
        const ImageLaern(),
        IconLearnView(),
        const CardLearn(),
        const PaddingLearn(),
      ],
    );
  }
}

enum _MyTabViews { home, settings, profile, favorite }

extension _MyTabViewsExtension on _MyTabViews {}
