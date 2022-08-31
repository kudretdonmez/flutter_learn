import 'package:flutter/material.dart';
import 'package:proje0/product/language/language_items.dart';

import '../product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
 
  void _updateCounter(bool inIcrement){
    if (inIcrement){
      _countValue = _countValue + 1;
    }
    else{
      _countValue = _countValue - 1;
    }
    //tek fonksiyon altında arttırma azaltma yapılabilir.

    setState(() {
      
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle),
      //language_items.dart ' ta Stringler saklandı.
      //gerektiğinde yeni dil eklendiğinde ya da textler değişmesi gerektiğinde language_items'ten güncellenecek.

        
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(), 
          //Extract Method ile burası sadeleştirildi. 
        ],
      ),
      body:  Column(
        children: [
          Center(child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
              ),
            ),
          const Placeholder(),
          const CounterHelloButton(),  
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);

      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
