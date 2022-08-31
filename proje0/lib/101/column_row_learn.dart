 import 'package:flutter/material.dart';
 class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          Expanded(flex:4, child: Row(
            children: [ 
              Expanded(child: Container(color: Colors.red,)),
              Expanded(child: Container(color: Colors.yellow,)),
              Expanded(child: Container(color: Colors.blue,)),
              Expanded(child: Container(color: Colors.green,)),
              
              ],
            ),       
          ),

          const Spacer(),
          //EXPAND EDİLMİŞ BOŞ ROW GİBİ DAVRANIR. BOŞ YER AÇAR.

          Expanded(flex:2, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //YATAYDA ORANLAMA YAPAR. 
            mainAxisSize: MainAxisSize.max,
            //DEFAULT'U MAX'TIR. EĞER MİN İSE mainAxisAlignment ÜST SATIR ÇALIŞMAZ.
            crossAxisAlignment: CrossAxisAlignment.center,
            //DİKEYDE ORANLAMA YAPAR
            children: const [
              Text('a'),
              Text('a'),
              Text('a'),
              ],  
            ),
          ),
          //4 + 2 + 2 + 2 = 10 
          //flex İLE ORANLAMA YAPARAK EKRANDA CONTAİNER'IN NE KADAR YER KAPLAYACAĞI BELİRLENİR.
          
          
          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            //ÖNCE 200 KADAR YERİ ALIR. GERİ KALANI DİĞERLERİNE BIRAKIR.
            child: Column(
              children: const [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ProjectContainerSizes {
  static const double cardHeight = 200;
  
}