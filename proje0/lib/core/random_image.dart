import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key,  this.height=100}) : super(key: key);
  // YUKARIDA REQIRED DEMEYİP 100'E EŞİTLENEBİLİR.
  // EĞER DEĞER ATANMAZSA DEĞERİ 100 ALSIN
  final imageUrl = 'https://picsum.photos/200/300';
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl,height: height ,fit: BoxFit.cover,);
  }
}