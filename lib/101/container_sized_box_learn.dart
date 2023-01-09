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
          //!-----------------------------------------------------------------------

          SizedBox(
            width: 300,
            height: 25,
            child: Text('a' * 600),
          ),

          //!-----------------------------------------------------------------------

          //const SizedBox.shrink(),
          SizedBox.square(dimension: 50, child: Text('b' * 500)),

          //!-----------------------------------------------------------------------

          Container(
            //* kısıtlamalar
            constraints: const BoxConstraints(maxWidth: 300, minWidth: 100, minHeight: 10, maxHeight: 200),
            child: Text('aa' * 100, maxLines: 1),
            padding: const EdgeInsets.all(20),
            //içeriden boşluk verir, text(içteki eleman) ile container arasındaki boşluğu ayarlar.
            margin: const EdgeInsets.all(20),
            //dışarıdan boşluk verir, komşu komponentler ile container arasındaki boşluğu ayarlar.
            decoration: ProjectUtility.boxDecoration,
          ),
          Container(
            //* kısıtlamalar
            constraints: const BoxConstraints(maxWidth: 150, minWidth: 100, minHeight: 10, maxHeight: 200),
            child: Text(
              'aa' * 100,
              maxLines: 1,
              style: const TextStyle(color: Colors.red),
            ),
            padding: const EdgeInsets.all(20),
            //içeriden boşluk verir, text(içteki eleman) ile container arasındaki boşluğu ayarlar.
            margin: const EdgeInsets.symmetric(vertical: 50),
            //dışarıdan boşluk verir, komşu komponentler ile container arasındaki boşluğu ayarlar.
            decoration: ProjectContainerDecoration(),
          ),

          //!-----------------------------------------------------------------------
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
      boxShadow: const [BoxShadow(color: Colors.orange, offset: Offset(0, 0), blurRadius: 12)],
      border: Border.all(width: 2, color: Colors.white));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          color: Colors.yellow[400],
          boxShadow: [const BoxShadow(color: Colors.white, offset: Offset(0, 0), blurRadius: 50)],
          //border: Border.all(width: 10, color: Colors.white, style: BorderStyle.none)
          border: Border.symmetric(
            horizontal: BorderSide(width: 12.0, color: Colors.red[300]!),
            vertical: BorderSide(width: 12.0, color: Colors.orange[300]!),
          ),
        );
}
