import 'package:flutter/material.dart';
<<<<<<< HEAD
import '101/container_sized_box_learn.dart';
=======
import '101/statefull_life_cycle_learn.dart';
>>>>>>> 5dffd7697499992d7562de6f0df64ee48df5a071

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
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.yellowAccent),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey,
          iconColor: Colors.red,
          border: OutlineInputBorder(),
        ),
      ),
<<<<<<< HEAD
      //* 101 deki .dart dosyalarına bağlanmak için aşağısını değiştiriyoruz.
      home: ContainerSizedBoxLearn(),
=======
      // 101 deki .dart dosyalarına bağlanmak için aşağısını değiştiriyoruz.
      home: const StatefullLifeCycleLearn(message: 'KDRT'),
>>>>>>> 5dffd7697499992d7562de6f0df64ee48df5a071
    );
  }
}
