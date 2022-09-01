import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({Key? key, this.isOkey = false}) : super(key: key);
  final bool isOkey;

  @override
  State<NavigateDetailLearnDart> createState() => _NavigateDetailLearnDartState();
}

class _NavigateDetailLearnDartState extends State<NavigateDetailLearnDart> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
              // SAYFADAN TRUE İSTENDİĞİ İÇİN YOLLAR
            },
            icon: Icon(Icons.check, color: widget.isOkey ? Colors.red : Colors.green),
            label: widget.isOkey ? const Text('RED') : const Text('ONAYLA')),
      ),
    );
  }
}
