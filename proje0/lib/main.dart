import 'package:flutter/material.dart';
import 'package:proje0/theme/light_theme.dart';
import '101/to_do_app.dart';

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

      theme: LightTheme().theme,
      // ThemeData.dark().copyWith(
      //   //!-----TAB_BAR---------------------------------------------------------
      //   tabBarTheme: const TabBarTheme(
      //     labelColor: Colors.white,
      //     //indicatorSize: TabBarIndicatorSize.label,
      //     unselectedLabelColor: Colors.green,
      //   ),
      //   //!---------------------------------------------------------------------
      //   listTileTheme: const ListTileThemeData(
      //     contentPadding: EdgeInsets.zero,
      //   ),
      //   //!---------------------------------------------------------------------
      //   progressIndicatorTheme: const ProgressIndicatorThemeData(
      //     color: Colors.yellowAccent,
      //   ),
      //   //!---------------------------------------------------------------------
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //     centerTitle: true,
      //   ),
      //   //!---------------------------------------------------------------------
      //   inputDecorationTheme: const InputDecorationTheme(
      //     filled: true,
      //     fillColor: Colors.grey,
      //     iconColor: Colors.red,
      //     border: OutlineInputBorder(),
      //   ),
      //   //!---------------------------------------------------------------------
      // ),

      //* 101 deki .dart dosyalarına bağlanmak için aşağısını değiştiriyoruz.
      home: const ToDoApp(),
    );
  }
}
