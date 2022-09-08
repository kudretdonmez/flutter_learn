// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 600),
          ),
          //const SizedBox.shrink(),
          SizedBox.square(dimension: 120, child: Text('b' * 500)),
          Container(
            constraints:
                const BoxConstraints(maxWidth: 300, minWidth: 100, minHeight: 10, maxHeight: 140), //*kısıtlamalar
            child: Text('aa' * 100, maxLines: 1),
            padding: const EdgeInsets.all(20),
            //içeriden boşluk verir
            margin: const EdgeInsets.all(50),
            //dışarıdan boşluk verir
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      //color: Colors.red,
      //shape: BoxShape.circle,
      boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)],
      border: Border.all(width: 3, color: Colors.white));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            //color: Colors.red,
            //shape: BoxShape.circle,
            boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 50)],
            border: Border.all(width: 10, color: Colors.white));
}
