import 'package:flutter/material.dart';
class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();


  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(title:const Text('merhaba')  ),
      body: Column(
        
        children: [

          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).backgroundColor,
              size:IconSizes().iconSmall,
              )
            ),

          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.message_outlined,
              color:IconColors().froly,
              size:IconSizes().iconSmall,

           
              )
            ),
          


          //--!!!!--HATALI KULLANIM--!!!!--
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.blue,
              size:48,

           
              )
            )
          ],
        ),
    );
    
  }
}
class IconSizes{
  final double iconSmall = 40;
}

class IconColors{
  final Color froly = const Color(0xFFED617A);
}