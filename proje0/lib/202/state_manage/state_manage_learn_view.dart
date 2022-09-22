import 'package:flutter/material.dart';

import 'state_learn_view_model.dart';

class StateManagerLearnView extends StatefulWidget {
  const StateManagerLearnView({super.key});

  @override
  State<StateManagerLearnView> createState() => _StateManagerLearnViewState();
}

class _StateManagerLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      appBar: AppBar(
        backgroundColor: isVisible ? Colors.red : Colors.orange,
        shadowColor: isOpacity ? Colors.amber : Colors.yellow,
      ),
    );
  }
}
