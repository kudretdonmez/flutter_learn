import 'package:flutter/material.dart';
import '101/scaffold_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
          //!-----TAB_BAR---------------------------------------------------------
          // tabBarTheme: const TabBarTheme(
          //   labelColor: Colors.white,
          //   //indicatorSize: TabBarIndicatorSize.label,
          //   unselectedLabelColor: Colors.green,
          // ),
          //!---------------------------------------------------------------------
          // listTileTheme: const ListTileThemeData(
          //   contentPadding: EdgeInsets.zero,
          // ),
          //!---------------------------------------------------------------------
          // progressIndicatorTheme: const ProgressIndicatorThemeData(
          //   color: Colors.yellowAccent,
          // ),
          //!---------------------------------------------------------------------
          // appBarTheme: const AppBarTheme(
          //   backgroundColor: Colors.transparent,
          //   elevation: 0,
          //   centerTitle: true,
          // ),
          //!---------------------------------------------------------------------
          //
          //!---------------------------------------------------------------------
          ),

      //* 101 deki .dart dosyalarına bağlanmak için aşağısını değiştiriyoruz.
      home: const ScaffoldLearnView(),
    );
  }
}
