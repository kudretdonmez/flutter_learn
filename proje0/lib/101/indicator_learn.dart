import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgress()],
      ),
      body: const LinearProgressIndicator(),
      // ÇUBUK ŞEKLİNDE INDICATOR
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      // color: Colors.white,
      // BUNU KULLANMAK YERİNE main.dart THEME KISMINDAN AYARLANIR.
      // progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.amber),
      // BİR PROJEDE BÜTÜN PROCESS INDICATORLAR AYNI OLMALIDIR.
      strokeWidth: 6,
      // KALINLIĞI
    ));
  }
}
