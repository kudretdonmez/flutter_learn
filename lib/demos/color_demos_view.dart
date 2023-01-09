// Bir ekran olacak
// Bu ekranda 3 buton ve bunlara basınca renk değişimi olacak
// Secili olan button selected icon olsun

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;
  //! DEFAULTTA TRANSPARENT

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor != widget.initialColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        // ONTAP ILE HANGI TUŞA BASILDIGI TESPIT EDILECEK
        // value DEGERI 1 2 3 DİYE TUŞ SIRASINA GÖREDİR
        items: const [
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: 'RED'),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: 'YELLOW'),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: 'BLUE'),
          //EXTRACT WIDGET ILE DIŞARI ALINDI.
          //WIDHT VE HEIGHT AYNI OLDUĞU ICIN ALTTA KALDI.
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }
// VALUE DEĞERİ  1 2 3 OLDUĞU İÇİN BU DEĞERLERİ NUMARALANDIRIYOR

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
