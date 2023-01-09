import 'package:flutter/material.dart';
import 'package:proje0/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 50.0;
  final _cardWidht = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex:4, 
            child: Stack(
              alignment: Alignment.center,
              children:  [ Positioned.fill(bottom: _cardHeight/2,child: const RandomImage(),),
              Positioned(
                height: _cardHeight,
                //right: 0,
                //left: 0, 
                bottom: 0,
                width: _cardWidht,
                child: _cardCustom(), 
                  ),
                ],
              ),
            ),
          const Spacer(
            flex: 6,
          ),
          //SPACER SAYESİNDE ORANLAMA İLE YÜZDE 60LIK BİR ALAN ALTTA AYRILACAK.
        ],
      ),
    );
  }

  Card _cardCustom() {
    return const Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(),
                  );
  }
}