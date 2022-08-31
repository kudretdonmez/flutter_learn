import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            top: 25,
            height: 100,
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),

        ],

      ),
    
    // HER ZAMAN SONRADAN YAZILAN ÜSTTE OLUR.



    );
  }
}