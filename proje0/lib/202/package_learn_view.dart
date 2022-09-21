import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package/loading_bar.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const LoadingBar(),
      floatingActionButton: const FloatingActionButton(
        onPressed: _launchUrl,
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
