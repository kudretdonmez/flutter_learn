import 'package:flutter/material.dart';
import 'demos/stack_demo_view.dart';
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
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.yellow),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent, 
          elevation: 0,
        ),
      ),
      // 101 deki .dart dosyalarına bağlanmak için aşağısını değiştiriyoruz.
      home:  const StackDemoView(),


    );
  }
  

}

