import 'package:flutter/material.dart';

const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: _DurationItems.durationLow,
    );
  }

  late AnimationController controller;
  bool _isVisible = false;
  bool _isOpacity = false;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : kZero);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              duration: _DurationItems.durationLow,
              opacity: _isOpacity ? 1 : kZero,
              child: const Text('data'),
            ),
            trailing: IconButton(
              onPressed: () {
                _changeOpacity();
              },
              icon: const Icon(Icons.precision_manufacturing_rounded),
            ),
          ),
          AnimatedDefaultTextStyle(
            style: (_isVisible ? context.textTheme().subtitle1 : context.textTheme().headline1) ?? const TextStyle(),
            duration: _DurationItems.durationLow,
            child: const Text('data'),
          ),
          AnimatedIcon(
            icon: AnimatedIcons.pause_play,
            progress: controller,
          ),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            color: Colors.red,
            height: _isVisible ? kZero : MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Expanded(
            child: Stack(
              children: const [
                AnimatedPositioned(
                    top: 30, curve: Curves.easeInOut, duration: _DurationItems.durationLow, child: Text('data'))
              ],
            ),
          ),
          Expanded(
            child: AnimatedList(itemBuilder: ((context, index, animation) {
              return const Text('data');
            })),
          )
        ],
      ),
      //Text('data', style: context.textTheme().headline1),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: _DurationItems.durationLow,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
