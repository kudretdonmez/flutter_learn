import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('merhaba')),
      body: Column(
        children: [
          //!-------------------------------------------------------------------

          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).backgroundColor,
              size: iconSize.iconSmall,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          //!-------------------------------------------------------------------

          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: IconColors().froly,
              size: IconSizes().iconSmall,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          //!-------------------------------------------------------------------
          //!--!!!!--HATALI KULLANIM--!!!!--
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.blue,
              size: 48,
            ),
          ),
        ],
      ),
    );
  }
}

//?-----------------------------------------------------------------------------
//? CLASSes

class IconSizes {
  final double iconSmall = 30;
}

//?-----------------------------------------------------------------------------

class IconColors {
  final Color froly = const Color(0xFFED617A);
}

//?-----------------------------------------------------------------------------
