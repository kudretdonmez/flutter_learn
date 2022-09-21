import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatefulWidget {
  const LoadingBar({super.key, this.size});
  final double? size;

  @override
  State<LoadingBar> createState() => _LoadingBarState();
}

class _LoadingBarState extends State<LoadingBar> with TickerProviderStateMixin {
  final double _defaultSize = 40;

  @override
  Widget build(BuildContext context) {
    return SpinKitSquareCircle(
      color: Colors.white,
      size: widget.size ?? _defaultSize,
      controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
    );
  }
}
