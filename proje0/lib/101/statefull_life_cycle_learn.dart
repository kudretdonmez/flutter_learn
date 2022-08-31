import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = " ";
  late final bool _isOdd;
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += "tek";
    } else {
      _message += "çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
        //title: _isOdd ? const Text(_message) : const Text('çift'),
        //! yukarıda main.dart'tan gelen kelimenin uzunluğu tek mi çift mi kontrol eder
        //* ?(soru işareti) IF KOMUTU :(ikinokta) ELSE KOMUTUDUR
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
